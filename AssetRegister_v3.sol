pragma solidity ^0.4.18;

contract Register  {
    
    struct Vehicle {
        uint regoNumber;
        uint modelNumber;
        string Name;
        }
    
   mapping (uint => Vehicle) Vehicles;
   uint[] public vehicleAccts;
   uint public callCount = 1;
   
    
    event vehicleInfo (
        uint regoNumber,
        uint modelNumber,
        string Name
        );
        
   
       //501, 2001, "Bob1"  501, 2002, "Bob2"  502, 2003, "Bob3"
       // add vehicle details to the blockchain
    function addVehicle(uint _regoNumber, uint _modelNumber, string _Name) public {
      
       var vehicle = Vehicles[_regoNumber];
        
        vehicle.regoNumber = _regoNumber;
        vehicle.modelNumber = _modelNumber;
        vehicle.Name = _Name;
        
        vehicleAccts.push(_regoNumber) -1;
        vehicleInfo(_regoNumber, _modelNumber, _Name);
    }
    
    function getVehileRego() view public returns(uint[])  {
        return vehicleAccts;
    }
    function countVehicles() view public returns (uint) {
        return vehicleAccts.length;
   }
     function countCounter() view public returns (uint) {
        return callCount;
   }
    // Vehicle detail verification function
    function getVehicleDetails(uint _regoNumber)  public returns (uint, uint, string)  {
         callCount = callCount + callCount++;
      return (Vehicles[_regoNumber].regoNumber, Vehicles[_regoNumber].modelNumber, Vehicles[_regoNumber].Name);
     
        
    }
}
