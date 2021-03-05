@isTest
public class LeadProcessorTest {
    @isTest
    public static void testLeadProcessor(){
        List<Lead> leadlist = new List<lead>();
        for(integer i= 0; i < 200; i++){
            Lead l = new Lead();
            l.firstname = 'FirstName';
            l.lastname = 'LastName: ' + i;
            l.company = 'Company: '+i;
            leadlist.add(l);
        }
        insert leadlist;

        Test.startTest();
            LeadProcessor lp = new LeadProcessor();
            Database.executeBatch(lp);
        Test.stopTest();
    }
}
