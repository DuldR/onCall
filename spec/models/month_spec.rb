# == Schema Information
#
# Table name: months
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  month_num   :integer          not null
#  month_start :datetime         not null
#  month_end   :datetime         not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Month, type: :model do
  describe "validations" do

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:month_num) }


  end

  describe "associations" do

    it { should have_many(:shifts) }
    
  end

  describe "class methods" do

    describe "#month_setup" do
      it "should take the month number and auto fill name and start/stop days" do
        pending
      end
    end
    
    
  end
end
