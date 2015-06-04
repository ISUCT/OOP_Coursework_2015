/**
 * 
 * @author atanyan
 */
function FirstForm() {
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
        var raspredelenie = new Raspredelenie(model.qRaspredelenie.cursor.raspredelenie_id);
       raspredelenie.show();
    };
    
    form.button1.onActionPerformed = function(event) {
        var teachers = new Teachers(model.qRaspredelenie.cursor.teacher);
       teachers.show();
    };
    form.button2.onActionPerformed = function(event) {
        var disciplines = new Disciplines(model.qRaspredelenie.cursor.discipline);
       disciplines.show();
    };
}
