SELECT Makes.Make
FROM     DriveTypes INNER JOIN
                  VehicleDetails ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID
				  where DriveTypes.DriveTypeName = 'FWD'