/**
 * 
 * @author nadia
 */
function CampaignDatesForm() {
    var self = this
            , model = P.loadModel(this.constructor.name)
            , form = P.loadForm(this.constructor.name, model);
    
    self.show = function (aUID) {
        form.show();
        model.QCampaignDates.params.campaignID = aUID;
        model.requery();
        
    };

    // TODO : place your code here
    
    model.requery(function () {
        // TODO : place your code here
    });
    
    form.button.onActionPerformed = function(event) {
        model.save();
    };
}
