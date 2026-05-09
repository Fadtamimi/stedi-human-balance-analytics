CREATE TABLE stedi.customer_trusted
WITH (
  external_location = 's3://fahad-stedi-lakehouse-123/customer/trusted/',
  format = 'JSON'
) AS
SELECT *
FROM stedi.customer_landing
WHERE sharewithresearchasofdate IS NOT NULL
  AND trim(sharewithresearchasofdate) <> '';
