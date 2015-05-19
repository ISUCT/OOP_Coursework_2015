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
}
