require 'rails_helper'

RSpec.describe AdoptionsController, type: :controller do
    describe "GET #index" do
        before { get :new }
        it "responds successfully with an HTTP 200 status code" do
          expect(response.status).to eq(200)
        end
        it "responds successfully" do
            expect(response.successful?).to be_truthy
        end 
    end
end
