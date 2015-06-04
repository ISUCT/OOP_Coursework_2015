/**
 * 
 * @author atanyan
 */
function Teachers() {
    var id;
    if (arguments.length>0){
        id=arguments[0];
    }
    if (id){
        P.Logger.info(id);
    }
    
    var self = this
            , model = P.loadModel(this.constructor.name)
            , form = P.loadForm(this.constructor.name, model);
    
    self.show = function () {
        form.show();
    };
    
    model.qPoiskT.params.iname = "%%";
    
    model.requery(function () {
        // TODO : place your code here
    });
    
    form.button1.onActionPerformed = function(event) {
        model.qPoiskT.push({});
    };
    form.button2.onActionPerformed = function(event) {
        var c = confirm("Delete?");
        if (c) {
        for (var i in form.modelGrid.selected) {
            model.qPoiskT.splice(model.qPoiskT.indexOf(form.modelGrid.selected[i]), 1);
        }
    }
    };
    form.button3.onActionPerformed = function(event) {
        model.save();
    };
    form.textField.onActionPerformed = function(event) {
        // TODO Добавьте здесь свой код
    };
    form.button.onActionPerformed = function(event) {
        var search = form.textField.text;
        model.qPoiskT.params.iname = "%" + search + "%";
        model.requery();
    };
}
