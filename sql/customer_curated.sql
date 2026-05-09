CREATE TABLE stedi.customer_curated
WITH (
  external_location = 's3://fahad-stedi-lakehouse-123/customer/curated/',
  format = 'JSON'
) AS
SELECT DISTINCT c.*
FROM stedi.customer_trusted c
JOIN stedi.accelerometer_trusted a
  ON c.email = a.user;
