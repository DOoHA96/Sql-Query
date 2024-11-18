select Makes.Make, count(*) as NumberOfVehicles from VehicleDetails
INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
where (VehicleDetails.Year between 1950 and 2000)
group by Make
order by NumberOfVehicles desc