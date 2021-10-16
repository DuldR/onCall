# == Schema Information
#
# Table name: shifts
#
#  id          :bigint           not null, primary key
#  shift_start :datetime         not null
#  shift_end   :datetime         not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  month_id    :integer
#
require 'rails_helper'

RSpec.describe Shift, type: :model do

  subject(:shift) {FactoryBot.build(:shift)}

  describe "validations" do
    
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:month_id) }

    describe "invalid shift times" do
      it "shift start cannot be after shift end" do
        expect(shift).to be_valid
      end

      it "shift end cannot be before shift start" do
        expect(FactoryBot.build(:shift, shift_end: DateTime.new(2020/12/1))).not_to be_valid
      end

      it "should take a datetime only and set it" do
        pending
      end
    end

  end

  describe "asssociations" do
    it { should belong_to(:month) }
    it { should belong_to(:user) }

  end

  describe "class methods" do


  end

end
