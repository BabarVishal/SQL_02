SELECT * FROM PLACEMENTS;

-- now()
SELECT NOW() AS CURRENT_DATE_TIME;

-- current_date
SELECT CURRENT_DATE AS TODAY_DATE;

SELECT placement_date, current_date, (CURRENT_DATE - PLACEMENT_DATE) AS Day_diffrence
from placements;

-- extract
SELECT placement_date,
       EXTRACT(YEAR FROM placement_date) as year_added,
	   EXTRACT(MONTH FROM placement_date) as Month_added,
	   EXTRACT(DAY FROM placement_date) as day_added
	   FROM placements;

-- age
SELECT placement_date, current_date,
       AGE(CURRENT_DATE, placement_date) as age_since_added 
	   from placements;

-- to_char
SELECT placement_date,
       TO_CHAR(placement_date, 'dd-mm-yyyy') as new_date
	   FROM placements;

-- date_part
SELECT placement_date, 
       DATE_PART('dow', placement_date) as new_col
	   FROM placements;

SELECT placement_date, 
       DATE_PART('year', placement_date) as new_col
	   FROM placements;

SELECT placement_date, 
       DATE_PART('month', placement_date) as new_col
	   FROM placements;

-- INTERVAL
SELECT placement_date, 
       placement_date + INTERVAL '6 DAY' as new_col
	   FROM placements;

-- to_date
SELECT TO_DATE('28-11-2026', 'DD-MM-YYYY') as currentDate;
       