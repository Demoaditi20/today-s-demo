trigger checkboxing on position__c (before insert,before update) {
for(position__c pos :trigger.new){
//added by sonali
if(pos.min_pay__c < 6666){
pos.travel_required__c = false;





}
}

}