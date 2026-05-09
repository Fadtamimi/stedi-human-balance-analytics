CREATE TABLE stedi.step_trainer_trusted
WITH (
  external_location = 's3://fahad-stedi-lakehouse-123/step_trainer/trusted/',
  format = 'JSON'
) AS
SELECT s.*
FROM stedi.step_trainer_landing s
JOIN stedi.customer_curated c
  ON s.serialnumber = c.serialnumber;
