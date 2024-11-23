select * from 
(
	Select VehicleDetails.Vehicle_Display_Name, Year, Age= YEAR(GetDate()) - VehicleDetails.year
	from VehicleDetails
)R1
where Age between 15 AND 25
order by Age desc;