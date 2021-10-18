# == Schema Information
#
# Table name: shifts
#
#  id          :bigint           not null, primary key
#  shift_start :date             not null
#  shift_end   :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  month_id    :integer
#
require 'rails_helper'

RSpec.describe Shift, type: :model do

  subject(:shift) {FactoryBot.build(:shift)}

  describe "validations" do
    
    it { should validate_presence_of(:shift_start) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:month_id) }

    context "invalid shift times" do

      it "shift start cannot be after shift end" do
        expect(shift).to be_valid
      end

      it "shift end cannot be before shift start" do
        expect(FactoryBot.build(:shift, shift_end: Date.new(2020, 12, 1))).not_to be_valid
      end

      it "should take a date only" do
        expect(FactoryBot.build(:shift, shift_end: "Test")).not_to be_valid
        expect(FactoryBot.build(:shift, shift_start: "Lets begin")).not_to be_valid
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
