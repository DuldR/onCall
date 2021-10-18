require 'rails_helper'

RSpec.describe MonthsController, type: :controller do



    describe "GET #show" do

        subject(:month) {FactoryBot.create(:month)}

        it "render the show template" do

            get :show, params: { id: month.id }
            expect(response).to render_template(:show)
        end

        context "if the month does not exist" do
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
        it "renders the months index" do
            get :index
            expect(response).to render_template(:index)
        end
    end


end