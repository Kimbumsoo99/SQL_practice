-- NULL은 <= 같은 연산기호로는 못잡는다!
-- 문제는 10cm 이하면 NULL이라는 내용이 있었음.
SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO
WHERE LENGTH IS NULL;