public class getVehicleList {
    
    public class vehicleListRequest{
        @InvocableVariable(
            description='Filter Values for the Vehicle List'
        )
        public String filterValues;
    }
    
    public class vehicleListResponse{
        @InvocableVariable(
            description='Vehicle List'
        )
        public List<Vehicle_Inventory__dlm> vehicleInventory;
    }
    
    @InvocableMethod(label='Get Vehicle List' description='Returns the list of vehicle details to agent' category='Vehicle_Inventory__dlm')
    public static List<vehicleListResponse> getVehicleData(List<vehicleListRequest> requests){
        String filterVal = requests[0].filterValues.replace('"','');
        filterVal=filterVal.replace(', ',',');
        List<String> filterList = filterVal.split(',');
        
       // List<String> filterList = requests[0].filterValues;
        System.debug('###Filter Values = '+filterList);
        List<Vehicle_Inventory__dlm> vehicleList= [SELECT 
                                                   Id
                                                   ,Pickup_Location_Name_c__c 
                                                   ,Color_c__c
                                                   ,Condition_c__c
                                                   ,Vehicle_Type_c__c
                                                   ,City_c__c
                                                   ,State_c__c
                                                   ,Last_Service_Date_c__c
                                                   ,Transmission_Type_c__c
                                                   ,Name__c 
                                                   ,Vehicle_Id_c__c 
                                                   ,License_Plate_c__c 
                                                   ,Fuel_Type_c__c 
                                                   , Daily_Rental_Price_c__c, Current_Status_c__c                   
                                                   FROM Vehicle_Inventory__dlm 
                                                   WHERE city_c__c=:filterList[0] AND state_c__c=:filterList[1] AND vehicle_type_c__c=:filterList[2] AND Current_Status_c__c ='Available' 
                                                   limit 20];
        vehicleListResponse response = new vehicleListResponse();
        response.vehicleInventory = vehicleList;
        return new List<vehicleListResponse>{response};
            
            }
}