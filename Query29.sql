select found=1 
where 
exists (
        select top 1 * from VehicleDetails where Year =1950
      )