require 'rails_helper'

RSpec.describe PetsController, type: :controller do
    describe "GET #index" do
        before { get :index }
        it "responds successfully with an HTTP 200 status code" do
          expect(response.status).to eq(200)
        end
        it "responds successfully" do
            expect(response.successful?).to be_truthy
        end 
    end

    describe 'GET #show' do
        before { get :show }
        it { should redirect_to(pets_path) }
        it { should redirect_to(action: :index) }
    end
end
