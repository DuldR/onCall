require 'rails_helper'

RSpec.describe SwapsController, type: :controller do

    describe "GET #show" do

        subject(:swap) {FactoryBot.create(:swap)}

        it "render the show template" do

            get :show, params: { id: swap.id }
            expect(response).to render_template(:show)
        end

        context "if the swap does not exist" do
            it "is not a success" do
                begin
                    get :show, params: { id: -1 }
                rescue
                    ActiveRecord::RecordNotFound
                end

                expect(response).not_to render_template(:show)
            end

        end
        
    end

    describe "GET #index" do
        it "renders the swaps index" do
            get :index
            expect(response).to render_template(:index)
        end
    end


    describe "POST #create" do

        subject(:swap) {FactoryBot.build(:swap)}

        # This can be cleaned up
        let!(:user) {FactoryBot.create(:user)}
        let!(:user2) { FactoryBot.create(:user, id: 2, name: "TestMan2")}
        let!(:month) {FactoryBot.create(:month)}
        let!(:shift1) { FactoryBot.create(:shift, shift_start: Date.new(2021,1,1), shift_end: Date.new(2021,1,2), user_id: 1, month_id: 1)}
        let!(:shift2) { FactoryBot.create(:shift, shift_start: Date.new(2021,1,3), shift_end: Date.new(2021,1,4), user_id: 2, month_id: 1)}

        context "with invalid params" do
            it "should respond 422 if params are invalid" do
                post :create, params: { swap: { user_id: nil } }
                expect(response).to have_http_status(422)
            end
        end

        context "with valid params" do

            it "should respond with 200 if params are valid" do
                post :create, params: { swap: swap.attributes }
                expect(response).to have_http_status(200)
            end
            
        end
    end
end