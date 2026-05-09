CREATE TABLE stedi.accelerometer_trusted
WITH (
  external_location = 's3://fahad-stedi-lakehouse-123/accelerometer/trusted/',
  format = 'JSON'
) AS
SELECT a.*
FROM stedi.accelerometer_landing a
JOIN stedi.customer_trusted c
  ON a.user = c.email;
