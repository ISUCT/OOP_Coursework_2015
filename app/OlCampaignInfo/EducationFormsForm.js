/**
 * 
 * @author nadia
 */
function EducationFormsForm() {
    var id;
    if (arguments.length>0){
        id = arguments[0];
    }
    
    var self = this
            , model = P.loadModel(this.constructor.name)
            , form = P.loadForm(this.constructor.name, model);
    
    
    
    self.show = function () {
        form.show();
    };
    
    // TODO : place your code here
    if (id){
        model.QEducationForms.params.id = id;
    }
    model.requery(function () {
        // TODO : place your code here
    });
    
    form.button1.onActionPerformed = function(event) {
        if (id){
            model.QEducationForms.push({"campaigns_id":id});
            
        }
    };
    form.btnSave.onActionPerformed = function(event) {
        model.save();
    };
}
