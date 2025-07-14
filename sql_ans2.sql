use company
select * from responses

#2. What percentage of respondents from India are interested in education abroad and sponsorship?

SELECT 
    (COUNT(*) / (SELECT COUNT(*) FROM responses WHERE Country = 'India') * 100) AS percentage
FROM responses
WHERE Country = 'India' AND Higher_Eduation_Aspirations = 'Yes';

#8. What is the distribution of minimum expected salary in the first three years among respondents?

SELECT Minimum_Expected_Salary_for_Three_Years, COUNT(*) AS count
FROM responses
GROUP BY Minimum_Expected_Salary_for_Three_Years
ORDER BY Minimum_Expected_Salary_for_Three_Years;

#9. What is the expected minimum monthly salary in hand?

SELECT MIN(Starting_Career_Salary_Expectations) AS minimum_salary
FROM responses;

#10. What percentage of respondents prefer remote working?

SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM responses)) AS percentage
FROM responses
WHERE Preferred_Working_Environment = 'remote';

#11. What is the preferred number of daily work hours?

SELECT 'Willingnes_ to_Work_Daily Hours', COUNT(*) AS count
FROM responses
GROUP BY 'Willingnes_ to_Work_Daily Hours'
ORDER BY count DESC;

#13. How does the need for work-life balance interventions vary by gender?

SELECT 
    Gender, 
    Frequency_of_Full_Week_Breaks, 
    COUNT(*) AS count
FROM 
    EmployeePreferences
WHERE 
    Frequency_of_Full_Week_Breaks IN ('Once in 3 months', 'Once in 6 months', 'Once in 12 months', 'Once in 2 months')
GROUP BY 
    Gender, Frequency_of_Full_Week_Breaks
ORDER BY 
    Gender, Frequency_of_Full_Week_Breaks
LIMIT 0, 1000;


#14. How many respondents are willing to work under an abusive manager?

SELECT Work_Under_Abusive_Manager, COUNT(*) AS count
FROM responses
WHERE Work_Under_Abusive_Manager = 'yes';

#15. What is the distribution of minimum expected salary after five years?

SELECT Expected_Salary_After_Five_Years, COUNT(*) AS count
FROM responses
GROUP BY Expected_Salary_After_Five_Years
ORDER BY Expected_Salary_After_Five_Years;

#19. What percentage of respondents need sponsorship for education abroad?

SELECT 
    (COUNT(*) / (SELECT COUNT(*) FROM responses) * 100) AS percentage
FROM responses
WHERE Higher_Eduation_Aspirations = 'Needs a Sponsor';