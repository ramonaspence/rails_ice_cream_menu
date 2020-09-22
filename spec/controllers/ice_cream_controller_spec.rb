require 'rails_helper'

## assigns and assert_template

RSpec.describe IceCreamsController, :type => :controller do
    
    describe "GET index" do
        it "returns status code 200" do
            get :index
            expect(response.status).to eq(200)
        end

        it 'returns status code success' do
            get :index
            expect(response).to have_http_status(:success)
        end

        it "renders index template" do
            get :index
            expect(response).to render_template("index")
        end
    end
    
end