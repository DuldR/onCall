# == Schema Information
#
# Table name: swaps
#
#  id              :bigint           not null, primary key
#  user_id         :integer          not null
#  shift_id        :integer          not null
#  target_id       :integer          not null
#  target_shift_id :integer          not null
#  origin_approve  :boolean          default(TRUE)
#  target_approve  :integer          default(0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe Swap, type: :model do

  describe "validations" do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:shift_id) }
    it { should validate_presence_of(:target_id) }
    it { should validate_presence_of(:target_shift_id) }
    it { should validate_presence_of(:origin_approve) }
    it { should validate_inclusion_of(:target_approve).in_array([0,1,-1]) }

  end

  describe "asssociations" do

    it { should belong_to(:user) }
    it { should have_one(:user_shift)}
    it { should have_one(:target_shift)}

  end

  describe "class methods" do

    # subject(:swap) {FactoryBot.build(:swap)}

    let!(:user1) { FactoryBot.create(:user)}
    let!(:user2) { FactoryBot.create(:user, id: 2, name: "TestMan2")}


    subject(:swap) { Swap.new(user_id: 1, shift_id: 1, target_id: 2, target_shift_id: 2)}

    describe "#judge_swap" do
      it "if accepted, target approve should be 1" do

        expect(User.all.to_a[1]).to be([1,2,3])
      end

      it "if denied, target approve should be -1" do
        pending
      end

      it "if pending, target approve should be 0" do
        pending
      end
    end
  end


end
