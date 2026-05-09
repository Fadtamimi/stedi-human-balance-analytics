CREATE TABLE stedi.machine_learning_curated
WITH (
  external_location = 's3://fahad-stedi-lakehouse-123/machine_learning/curated/',
  format = 'JSON'
) AS
SELECT
  a.user,
  a.timestamp,
  a.x,
  a.y,
  a.z,
  s.sensorreadingtime,
  s.serialnumber,
  s.distancefromobject
FROM stedi.accelerometer_trusted a
JOIN stedi.step_trainer_trusted s
  ON a.timestamp = s.sensorreadingtime;
