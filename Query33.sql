select min( VehicleDetails.Engine_CC) As MinimimEngineCC,
MAX(VehicleDetails.Engine_CC) AS MaximumEngineCC,
AVG(VehicleDetails.Engine_CC) AS AverageEngineCC
from VehicleDetails