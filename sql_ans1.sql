use career_aspirations

#1. What is the gender distribution of respondents from India?
SELECT Gender, COUNT(*) AS count
FROM responses_career
WHERE Country = 'India'
GROUP BY Gender;

#3. What are the 6 top influences on career aspirations for respondents in India?
SELECT InfluencingFactors, COUNT(*) AS influence_count
FROM responses_career
WHERE Country = 'India'
GROUP BY InfluencingFactors
ORDER BY influence_count DESC
LIMIT 6;

#4. How do career aspiration influences vary by gender in India?
SELECT Gender, InfluencingFactors, COUNT(*) AS count
FROM responses_career
WHERE Country = 'India'
GROUP BY Gender, InfluencingFactors
ORDER BY count DESC;

#5. What percentage of respondents are willing to work for a company for at least 3 years?

SELECT 
    (COUNT(*) / (SELECT COUNT(*) FROM responses_career) * 100) AS percentage
FROM responses_career
WHERE Three_Year_Commitment = 'Yes';

#6. How many respondents prefer to work for socially impactful companies?

SELECT COUNT(*) AS count
FROM responses_career
WHERE Preferred_Company_Type = 'Social Impact';

#7. How does the preference for socially impactful companies vary by gender?

SELECT Gender, COUNT(*) AS count
FROM responses_career
WHERE Preferred_Company_Type = 'Social Impact'
GROUP BY Gender;

# 12. What are the common work frustrations among respondents?

SELECT What_would_frustrate_you_at_work, COUNT(*) AS count
FROM responses_career
GROUP BY What_would_frustrate_you_at_work
ORDER BY count DESC;

#16. What are the remote working preferences by gender?
 
SELECT Gender, Preferred_Work_Setup, COUNT(*) AS count
FROM responses_career
GROUP BY Gender, Preferred_Work_Setup;

#17. What are the top work frustrations for each gender?

SELECT Gender, What_would_frustrate_you_at_work, COUNT(*) AS count
FROM responses_career
GROUP BY Gender, What_would_frustrate_you_at_work
ORDER BY count DESC;


#18. What factors boost work happiness and productivity for respondents?
SELECT Factors_for_Happiness_Productivity, COUNT(*) AS count
FROM responses_career
GROUP BY Factors_for_Happiness_Productivity
ORDER BY count DESC;
