public class LeadProcessor implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT id, leadsource FROM lead');
    }

    public void execute(Database.BatchableContext bc, List<Lead> records){
        // process each batch of records
        for(Lead l: records){
            l.leadsource = 'Dreamforce';
        }
        update  records;
    }

    public void finish(Database.BatchableContext bc){
        //return void;
    }
}
