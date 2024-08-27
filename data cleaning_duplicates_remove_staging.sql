-- CREATE TABLE layoffs_staging
-- LIKE layoffs;

-- SELECT *
-- FROM layoffs_staging;

-- INSERT layoffs_staging
-- SELECT *
-- FROM layoffs;


-- SELECT *, 
-- ROW_NUMBER() OVER(
-- PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`
-- )
-- FROM layoffs_staging;


WITH duplicates_cte AS (
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, funds_raised_millions) AS row_num
FROM layoffs_staging
)

SELECT *
FROM duplicates_cte
WHERE row_num > 1;


























