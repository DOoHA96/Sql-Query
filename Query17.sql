SELECT count( distinct Makes.Make) As MakeWithFWD
FROM     DriveTypes INNER JOIN
                  VehicleDetails ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID
				  where DriveTypes.DriveTypeName = 'FWD'

				  --OR 
				  select count(*) MakeWithFWD
from
(
	SELECT        distinct Makes.Make, DriveTypes.DriveTypeName
	FROM            DriveTypes INNER JOIN
							 VehicleDetails ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID INNER JOIN
							 Makes ON VehicleDetails.MakeID = Makes.MakeID
	Where DriveTypes.DriveTypeName ='FWD'
) R1