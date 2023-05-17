SELECT * FROM INFO;
SELECT * FROM AUTH;

--INNER JOIN (붙을 수 있는 데이터가 없으면 안나옴)
SELECT * FROM INFO INNER JOIN AUTH ON INFO.AUTH_ID = AUTH.AUTH_ID;
--AUTH_ID는 양쪽 테이블이 모두 존재하기 때문에, SELECT에서 테이블명을 함께 적어줘야 합니다.
SELECT ID,
        TITLE,
        INFO.AUTH_ID,
        NAME
FROM INFO INNER JOIN AUTH ON INFO.AUTH_ID = AUTH.AUTH_ID;
--INNER 생략가능


--테이블 엘리어스
SELECT I.ID,
        I.TITLE,
        I.AUTH_ID,
        A.NAME
FROM INFO I
INNER JOIN AUTH A
ON I.AUTH_ID = A.AUTH_ID;

--WHERE
SELECT *
FROM INFO I
INNER JOIN AUTH A
ON I.AUTH_ID = A.AUTH_ID
WHERE ID IN(1,2,3)
ORDER BY ID DESC;

--INNER JOIN USING
SELECT *
FROM INFO
INNER JOIN AUTH
USING (AUTH_ID);
----------------------------------------------------------------
--OUTER JOIN
--LEFT OUTER JOIN
SELECT * FROM INFO I LEFT OUTER JOIN AUTH A ON I.AUTH_ID = A.AUTH_ID;
SELECT * FROM INFO I RIGHT OUTER JOIN AUTH A ON I.AUTH_ID = A.AUTH_ID;
