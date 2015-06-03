/**
 * 
 * @author nadia
 */
function EducationLevelsForm() {
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
        model.QEducationLevels.params.id = id;
    }
    model.requery(function () {
        // TODO : place your code here
    });
    
}
