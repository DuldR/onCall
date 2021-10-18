# == Schema Information
#
# Table name: swaps
#
#  id             :bigint           not null, primary key
#  user_id        :integer          not null
#  user_shift     :integer          not null
#  target_id      :integer          not null
#  target_shift   :integer          not null
#  origin_approve :boolean          default(TRUE)
#  target_approve :integer          default(0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe Swap, type: :model do

    describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:swap_request) }
    it { should validate_presence_of(:on_call) }

  end

  describe "asssociations" do
    it { should have_many(:shifts) }
    it { should have_many(:swaps) }

  end

  describe "class methods" do

    describe "#approve_swap" do
      it "should take a give swap request and set from nil to true" do
        pending
      end
    end

    describe "#deny_swap" do
      it "should take a give swap request and set from nil to false" do
        pending
      end
    end

end
