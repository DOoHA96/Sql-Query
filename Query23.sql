SELECT Makes.MakeID , Makes.Make , SubModels.SubModelName
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID INNER JOIN
                  SubModels ON VehicleDetails.SubModelID = SubModels.SubModelID
				  where SubModelName = 'Elite'
