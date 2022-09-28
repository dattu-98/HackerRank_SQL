SELECT a.hacker_id, a.name FROM Submissions AS d
INNER JOIN Challenges AS c ON d.challenge_id = c.challenge_id 
INNER JOIN Difficulty AS b ON b.difficulty_level = c.difficulty_level
INNER JOIN Hackers AS a ON a.hacker_id = d.hacker_id
WHERE d.score = b.score
GROUP BY a.hacker_id,a.name
HAVING COUNT(c.challenge_id) > 1
ORDER BY COUNT(c.challenge_id) DESC, a.hacker_id
