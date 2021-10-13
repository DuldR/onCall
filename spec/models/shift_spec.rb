# == Schema Information
#
# Table name: shifts
#
#  id          :bigint           not null, primary key
#  shift_start :datetime         not null
#  shift_end   :datetime         not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Shift, type: :model do

  describe "validations" do
    it { should validate_presence_of(:shift_start) }
    it { should validate_presence_of(:shift_end) }

  end

  describe "asssociations" do
    it { should belong_to(:month) }
    it { should belong_to(:user) }

  end

  describe "class methods" do

    describe "#shift_start" do
      it "should take a datetime that is not after the shift end" do
        pending
      end

      it "should take a datetime only and set it" do
        pending
      end
    end

    describe "#shift_end" do
      it "should take a datetime that is not before the shift start" do
        pending
      end
    end

    it "should take a datetime only and set it" do
        pending
    end

  end

end
