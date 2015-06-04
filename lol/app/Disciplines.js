/**
 * 
 * @author atanyan
 */
function Disciplines() {
    var id1;
    if (arguments.length>0){
        id1=arguments[0];
    }
    if (id1){
        P.Logger.info(id1);
    }
    var self = this
            , model = P.loadModel(this.constructor.name)
            , form = P.loadForm(this.constructor.name, model);
    
    self.show = function () {
        form.show();
    };
    
    model.qPoiskD.params.dname = "%%";
    
    model.requery(function () {
        // TODO : place your code here
    });
    
    form.button.onActionPerformed = function(event) {
        model.qPoiskD.push({});
    };
    form.textField.onActionPerformed = function(event) {
        // TODO Добавьте здесь свой код
    };
    form.button3.onActionPerformed = function(event) {
        var search = form.textField.text;
        model.qPoiskD.params.dname = "%" + search + "%";
        model.requery();
    };
    form.button1.onActionPerformed = function(event) {
        var c = confirm("Delete?");
        if (c) {
        for (var i in form.modelGrid.selected) {
            model.qPoiskD.splice(model.qPoiskD.indexOf(form.modelGrid.selected[i]), 1);
        }
    }
    };
    form.button2.onActionPerformed = function(event) {
        model.save();
    };
}
