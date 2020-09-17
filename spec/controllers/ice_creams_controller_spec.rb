# "what does a test do?
# A test sets up a context, situation, or environment
# that would/will/can be in the application itself 
# (ie: I log in and my credentials are invalid). 

# It defines what the expected result is and compares the two.
# "
require 'spec_helper'


RSpec.describe IceCreamsController, :type => :controller do
    
    context "GET new" do
        

        it 'assigns a blank ice_cream to the view' do
            get :new
            expect(assigns(:ice_cream)).to be_a_new(ice_cream)
        end


    end

    context "POST create" do


        it 'redirects to show view for the ice_cream just created' do
            params =
                { 
                    name: "chocolate", description: "This is a chocolate ice cream", 
                    date_churned: DateTime.now, }
            post :create, **params
            expect(response).to redirect_to(@ice_cream)
        end
    end
end