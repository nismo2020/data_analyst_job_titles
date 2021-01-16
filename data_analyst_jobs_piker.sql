SELECT COUNT (data_analyst_jobs)
FROM data_analyst_jobs;
*/question 1 is 1793 rows */

SELECT *
FROM data_analyst_jobs
LIMIT 10;
*/question 2 is ExxonMobil */

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE location = 'TN';

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE location = 'TN'
OR location = 'KY'
GROUP BY location;
*/question 3 is TN=21 and TN or KY = 27 */

SELECT *
FROM data_analyst_jobs
WHERE location = 'TN'
AND (star_rating > 4);

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE location = 'TN'
AND (star_rating > 4);

*/question 4 is three jobs have a star rating above 4 */

SELECT *
FROM data_analyst_jobs
WHERE (review_count > 500 AND review_count < 1000);

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE (review_count > 500 AND review_count < 1000);
*/question 5 is 150 jobs between 500 and 1000 reviews */

SELECT location AS state,
	AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT null
GROUP BY state
ORDER BY avg_rating DESC;
*/ question 6  */


SELECT COUNT(DISTINCT title) AS unique_titles
FROM data_analyst_jobs
GROUP BY title;

SELECT DISTINCT title
FROM data_analyst_jobs;

SELECT COUNT(DISTINCT (title))
FROM data_analyst_jobs;
*/question 7 is 881 unique jobe titles...  */


SELECT COUNT(DISTINCT (title))
FROM data_analyst_jobs
WHERE location = 'CA';

SELECT DISTINCT title
FROM data_analyst_jobs
WHERE location = 'CA';

*/question 8 there  are 230 unique job titles in CA  */

SELECT DISTINCT company, review_count, star_rating
FROM data_analyst_jobs
WHERE company IS NOT null
AND (review_count > 5000)
AND star_rating IS NOT null
ORDER BY star_rating DESC;

SELECT DISTINCT company, review_count, star_rating
FROM data_analyst_jobs
WHERE company IS NOT null
AND (review_count > 5000)
AND star_rating IS NOT null
ORDER BY star_rating DESC;


SELECT COUNT(DISTINCT company), review_count, star_rating
FROM data_analyst_jobs
WHERE company IS NOT null
AND (review_count > 5000)
AND star_rating IS NOT null
ORDER BY star_rating DESC;

*/question 9 */

SELECT DISTINCT company, review_count, star_rating
FROM data_analyst_jobs
WHERE company IS NOT null
AND (review_count > 5000)
AND star_rating IS NOT null
ORDER BY star_rating DESC;

*/question 10 */


SELECT COUNT(title)
FROM data_analyst_jobs
WHERE LOWER (title) LIKE '%analyst%';

SELECT DISTINCT title 
FROM data_analyst_jobs
WHERE LOWER (title) LIKE '%analyst%';

SELECT COUNT(DISTINCT title) 
FROM data_analyst_jobs
WHERE LOWER (title) LIKE '%analyst%';

*/question 11 */

SELECT DISTINCT (title), company
FROM data_analyst_jobs
WHERE LOWER(title) NOT LIKE '%analyst%' AND LOWER(title) NOT LIKE '%analytics%';

SELECT COUNT (DISTINCT title) 
FROM data_analyst_jobs
WHERE LOWER (title) NOT LIKE '%analyst%' AND LOWER (title) NOT LIKE '%analytics%'; 

*/question 12 there are 4 and they all include Tableau */


SELECT *
FROM data_analyst_jobs
LIMIT 5;

SELECT title, company, domain, days_since_posting, skill
FROM data_analyst_jobs
WHERE (days_since_posting >21)
AND (skill) LIKE '%SQL%'
AND domain IS NOT null
ORDER BY days_since_posting DESC

SELECT COUNT(*) as jobs, domain 
FROM data_analyst_jobs
WHERE skill LIKE '%SQL%'
AND days_since_posting > 21
AND domain is NOT NULL
GROUP BY domain
ORDER BY jobs DESC;

SELECT domain, COUNT(title) AS job_count
FROM data_analyst_jobs
WHERE UPPER(skill) LIKE '%SQL%'
AND days_since_posting > 21
AND domain IS NOT NULL
GROUP BY domain
ORDER BY job_count DESC
LIMIT 4;





