Select VehicleDetails.Vehicle_Display_Name from VehicleDetails
where Engine_CC = ( select  Max(Engine_CC) as MinEngineCC  from VehicleDetails )