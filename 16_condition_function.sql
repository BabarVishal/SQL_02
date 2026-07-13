SELECT * FROM COMPANIES;

SELECT company_name, location, package_lpa,
       CASE 
	       WHEN package_lpa >= 12 then 'good good'
		   WHEN package_lpa >= 6 and package_lpa <= 10 then 'good'
		   else 'bad'
		   end as price_category
		   from companies;