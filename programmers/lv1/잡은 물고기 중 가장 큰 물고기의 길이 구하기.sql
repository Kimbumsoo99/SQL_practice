SELECT CONCAT(MAX(LENGTH), 'cm') AS MAX_LENGTH
FROM FISH_INFO


SELECT CONCAT(LENGTH, 'cm') AS MAX_LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC
LIMIT 1;