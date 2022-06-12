public class ContactInvokable {
    @InvocableMethod
    public static void ProcessContactsForCases(List<Id> contactIds)
    {
         List<Contact> lstContacts =  
         [SELECT Id,Subject,Type,Status,Origin,OwnerId,
         AccountId,Priority FROM Case WHERE Id in :contactIds];
         CaseTaskServiceClass.caseCreation(lstContacts);

    }
}