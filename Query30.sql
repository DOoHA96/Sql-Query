select Vehicle_Display_Name,NumDoors,
case 
	WHEN NumDoors = 0 THEN 'Zero Doors'
    WHEN NumDoors = 1 THEN 'One Door'
    WHEN NumDoors = 2 THEN 'Two Doors'
    WHEN NumDoors = 3 THEN 'Three Doors'
    WHEN NumDoors = 4 THEN 'Four Doors'
    WHEN NumDoors = 5 THEN 'Five Doors'
    WHEN NumDoors = 6 THEN 'Six Doors'
    WHEN NumDoors = 8 THEN 'Eight Doors'
    WHEN NumDoors IS Null THEN 'Not Set'
	else 'Unkown'
End AS DoorDescription
from VehicleDetails