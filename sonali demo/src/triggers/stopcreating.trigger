trigger stopcreating on Account (before insert,before update) {
set<id> ids = new set<id>();
list<Account> acc1 = [select name from account where name like '%%male'];
for(account a1:acc1)
ids.add(a1.id);
list<Account> acc2 = [select name from account where name like '%%female'];
for(account a2:acc2)
ids.add(a2.id);
//adding some changes
//ok i m adding
//final addition
//final addition1

for(Account acc:trigger.new){
if(acc.recordtypeid == '01290000000oslA'){
if(ids.contains(acc.id)) 

acc.addError('You are not authorized to create a Person Account with “Male”/”Female” in the Account Name, please contact your Country Manager or Administrator for more details');
 
}





}

}