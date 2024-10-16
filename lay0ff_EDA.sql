use  world_layoffs;
select * from layoffs_stagging_2;

select total_laid_off,percentage_laid_off,country
 from layoffs_stagging_2;
 select max(total_laid_off) from layoffs_stagging_2;
 
 select `date`, total_laid_off,percentage_laid_off,country
 from layoffs_stagging_2;

-- total layyoff per country--
select country,sum(total_laid_off)  from layoffs_stagging_2 group by country
order by 2 desc;
-- industry--
select industry,sum(total_laid_off)  from layoffs_stagging_2 group by industry
order by 2 desc;

select min(`date`),max(`date`)  from layoffs_stagging_2;
select company , avg(percentage_laid_off)
from layoffs_stagging_2  group by company order by 2 desc ;

select substring(`date`,1,7) as `month` , sum(total_laid_off) from layoffs_stagging_2 where substring(`date`,1,7) is not null

 group by month
order by month asc
;
select company ,sum(total_laid_off  ), dense_rank() over (  order by sum(total_laid_off  ))
from layoffs_stagging_2
group by company
order by 3 asc  ;
with rolling_total as 
(
select substring(`date`,1,7) as `month` , sum(total_laid_off) as total_off from layoffs_stagging_2 where substring(`date`,1,7) is not null

 group by month
order by month asc
)
select  `month` ,total_off,sum(total_off) over(order by `month`)  as rolling_total  from rolling_total;

select company,sum(total_laid_off), year(`date`)   from layoffs_stagging_2    
group by  company,year(`date`)
order by 2 desc
 ;
 
 with company_year(Company,Total_laid_off,`year`) as
 (
 select company,sum(total_laid_off), year(`date`)   from layoffs_stagging_2    
group by  company,year(`date`)
 ), company_year_rank as
 (
 select * ,dense_rank() over(partition by `year` order by total_laid_off desc) as Ranking 
 from company_year where year is not null )
select * from company_year_rank
where ranking <=5;