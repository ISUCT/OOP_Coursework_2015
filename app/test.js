/**
 * 
 * @author nadia
 */
function test() {
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
        P.Logger.info("Hello");
        form.label.text = form.textField.text;
        var one = form.textField.text;
    };
    form.textField.onActionPerformed = function(event) {
        form.label.text = form.textField.text;
    };
    form.modelGrid.onMouseClicked = function(event) {
        P.Logger.info("Hello collumn");
    };
    form.button1.onActionPerformed = function(event) {
        model.qtest.push({});
    };
    form.button2.onActionPerformed = function(event) {
       model.save();
    };
    form.label.onMouseClicked = function(event) {
        // TODO Добавьте здесь свой код
    };
    form.button3.onActionPerformed = function(event) {
        form.panel.clear();
        var frm1 = new form1();
        frm1.showOnPanel(form.panel);
    };
    form.button4.onActionPerformed = function(event) {
        form.panel.clear();
        var frm1 = new form2();
        frm1.showOnPanel(form.panel);// TODO Добавьте здесь свой код
    };
}
