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

  describe "validations" do
    it { should validate_presence_of(:shift_start) }
    it { should validate_presence_of(:shift_end) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:month_id) }

  end

  describe "asssociations" do
    it { should belong_to(:month) }
    it { should belong_to(:user) }

  end

  describe "class methods" do

    subject(:shift) {FactoryBot.create(:shift)}

    describe "#make_shift" do
      it "shift start cannot be after shift end" do
        expect(shift.shift_start < shift.shift_end).to be true
      end

      it "shift end cannot be after shift start" do
        pending
      end

      it "should take a datetime only and set it" do
        pending
      end
    end

  end

end
