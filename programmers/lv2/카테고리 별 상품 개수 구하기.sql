SELECT Right(product_code, 2), COUNT(*) AS PRODUCTs  
FROM product
GROUP BY 1;