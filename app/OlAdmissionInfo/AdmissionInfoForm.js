/**
 * 
 * @author nadia
 */
function AdmissionInfoForm() {
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
       var f = new AdmissionVolumeForm();
        f.show();
    };
    form.button1.onActionPerformed = function(event) {
        // TODO Добавьте здесь свой код
    };
}
