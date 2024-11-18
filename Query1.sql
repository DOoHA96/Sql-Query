    CREATE VIEW VehicleMasterDetails3 AS
    
SELECT dbo.VehicleDetails.ID, dbo.VehicleDetails.MakeID, dbo.Makes.Make, dbo.VehicleDetails.ModelID, dbo.MakeModels.ModelName, dbo.VehicleDetails.SubModelID, dbo.SubModels.SubModelName, dbo.VehicleDetails.BodyID, 
    dbo.Bodies.BodyName, dbo.VehicleDetails.Vehicle_Display_Name, dbo.VehicleDetails.Year, dbo.VehicleDetails.DriveTypeID, dbo.DriveTypes.DriveTypeName, dbo.VehicleDetails.Engine, dbo.VehicleDetails.Engine_CC, 
    dbo.VehicleDetails.Engine_Cylinders, dbo.VehicleDetails.Engine_Liter_Display, dbo.VehicleDetails.FuelTypeID, dbo.FuelTypes.FuelTypeName, dbo.VehicleDetails.NumDoors
FROM     dbo.VehicleDetails INNER JOIN
    dbo.SubModels ON dbo.VehicleDetails.SubModelID = dbo.SubModels.SubModelID INNER JOIN
    dbo.MakeModels ON dbo.SubModels.ModelID = dbo.MakeModels.ModelID INNER JOIN
    dbo.Makes ON dbo.MakeModels.MakeID = dbo.Makes.MakeID INNER JOIN
    dbo.Bodies ON dbo.VehicleDetails.BodyID = dbo.Bodies.BodyID INNER JOIN
    dbo.DriveTypes ON dbo.VehicleDetails.DriveTypeID = dbo.DriveTypes.DriveTypeID INNER JOIN
    dbo.FuelTypes ON dbo.VehicleDetails.FuelTypeID = dbo.FuelTypes.FuelTypeID;