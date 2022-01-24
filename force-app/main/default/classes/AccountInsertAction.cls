public class AccountInsertAction {
 @InvocableMethod(label='Insert Accounts' description='Inserts the accounts specified and returns the IDs of the new accounts.')
 public static void insertAccounts(List<Account> accounts) {
 
 for(Account acc : accounts)
 {
 acc.Last_Quality_Check__c=system.today();
 }
 update accounts;
 
 }
}