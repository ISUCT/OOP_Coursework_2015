/**
 * 
 * @author nadia
 */
function form1() {
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
    
    
    self.showOnPanel = function (aPanel) {
        aPanel.add(form.view);
    };
}
