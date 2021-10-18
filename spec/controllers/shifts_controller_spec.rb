require 'rails_helper'

RSpec.describe ShiftsController, type: :controller do

    describe "GET #show" do

        subject(:shift) {FactoryBot.create(:shift)}

        it "render the show template" do

            get :show, params: { id: shift.id }
            expect(response).to render_template(:show)
        end

        context "if the shift does not exist" do
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
        it "renders the shifts index" do
            get :index
            expect(response).to render_template(:index)
        end
    end


    describe "POST #create" do

        subject(:shift) {FactoryBot.build(:shift)}
        let!(:user) {FactoryBot.create(:user)}
        let!(:month) {FactoryBot.create(:month)}

        context "with invalid params" do
            it "should respond 422 if params are invalid" do
                post :create, params: { shift: { user_id: nil } }
                expect(response).to have_http_status(422)
            end
        end

        context "with valid params" do

            it "should respond with 200 if params are valid" do
                post :create, params: {  shift: {shift_start: Date.new(2021,1,1), shift_end: Date.new(2021,1,2), user_id: 1, month_id: 1} }
                expect(response).to have_http_status(200)
            end
            
        end
    end
end