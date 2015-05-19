/**
 * 
 * @author nadia
 */
function PackageDataForm() {
    var self = this
            , model = P.loadModel(this.constructor.name)
            , form = P.loadForm(this.constructor.name, model);
    
    self.show = function () {
        form.show();
       
    };
    
    // TODO : place your code here
    
    model.requery(function () {
        // TODO : place your code here
    });
    
    form.button.onActionPerformed = function(event) {
        var f = new RecListsForm();
        f.show();
    };
    form.button4.onActionPerformed = function(event) {
        // TODO Добавьте здесь свой код
    };
    form.button1.onActionPerformed = function(event) {
       var f = new CampaignsForm();
        f.show();
    };
    form.button2.onActionPerformed = function(event) {
        var f = new AdmissionInfoForm();
        f.show();
    };
    form.button3.onActionPerformed = function(event) {
        var f = new ApplcationsForm();
        f.show();
    };
}
