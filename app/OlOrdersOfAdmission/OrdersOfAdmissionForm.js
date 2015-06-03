/**
 * 
 * @author nadia
 */
function OrdersOfAdmissionForm() {
    var self = this
            , model = P.loadModel(this.constructor.name)
            , form = P.loadForm(this.constructor.name, model);
    
    self.show = function () {
        form.show();
    };
    
    self.showModal = function () {
        form.showModal();
    };
    // TODO : place your code here
    
    model.requery(function () {
        // TODO : place your code here
    });
    
}
