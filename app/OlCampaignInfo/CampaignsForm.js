/**
 * 
 * @author nadia
 */
function CampaignsForm() {
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
    form.modelGrid.onMouseClicked = function(event) {
        P.Logger.info("Hello collumn");
    };
    form.button.onActionPerformed = function(event) {
        var cDates = new CampaignDatesForm();
        cDates.show(model.QCampaigns.cursor.uid);
    };
    form.button1.onActionPerformed = function(event) {
        model.save();
    };
    form.button2.onActionPerformed = function(event) {
        P.Logger.info("Hello collumn");
        var frm = new EducationFormsForm(model.QCampaigns.cursor.uid);
        frm.show();
    };
    form.button3.onActionPerformed = function(event) {
        P.Logger.info("Hello collumn");
        var frm = new EducationLevelsForm(model.QCampaigns.cursor.uid);
        frm.show();
    };
}
