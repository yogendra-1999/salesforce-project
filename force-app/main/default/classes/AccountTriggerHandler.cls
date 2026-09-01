public class AccountTriggerHandler {

    public static void createContacts(List<Account> accounts) {

        List<Contact> contactsToCreate = new List<Contact>();

        for (Account acc : accounts) {

            Contact con = new Contact();
            con.LastName = acc.Name;
            con.AccountId = acc.Id;

            contactsToCreate.add(con);
        }

        if (!contactsToCreate.isEmpty()) {
            insert contactsToCreate;
        }
    }
}