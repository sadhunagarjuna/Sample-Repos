public with sharing class AccountHelper {
   @AuraEnabled(cacheable=true)
   public static list<Opportunity> retriveOpportunities(){
    return [SELECT Id,Name,StageName,CloseDate FROM Opportunity];
   }
}
