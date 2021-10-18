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



    let!(:user1) { FactoryBot.create(:user)}
    let!(:user2) { FactoryBot.create(:user, id: 2, name: "TestMan2")}
    let!(:month) {FactoryBot.create(:month)}
    let!(:shift1) { FactoryBot.create(:shift, shift_start: Date.new(2021,1,1), shift_end: Date.new(2021,1,2), user_id: 1, month_id: 1)}
    let!(:shift2) { FactoryBot.create(:shift, shift_start: Date.new(2021,1,3), shift_end: Date.new(2021,1,4), user_id: 2, month_id: 1)}

    subject!(:swap) { Swap.create(user_id: 1, shift_id: 1, target_id: 2, target_shift_id: 2, user_shift: shift1, target_shift: shift2)}
    
    describe "#judge_swap" do

      it "verify database setup" do
        expect(User.all.to_a.length).to be(2)
        expect(Shift.all.to_a.length).to be(2)
        expect(Month.all.to_a.length).to be(1)
      end


      it "if pending, target approve should be 0" do
        expect(swap.target_approve).to be(0)
      end

      it "if accepted, target approve should be 1" do
        swap.judge_swap(1)
        expect(swap.target_approve).to be(1)
      end

      it "if denied, target approve should be -1" do
        swap.judge_swap(-1)
        expect(swap.target_approve).to be(-1)
      end

      it "if accepted, shift user_ids should be swapped" do
        swap.judge_swap(1)
        expect(shift1.user_id).to be(2)
        expect(shift2.user_id).to be(1)
      end

      it "if denied, shift user_ids should be unaffected" do
        swap.judge_swap(-1)
        expect(shift1.user_id).to be(1)
        expect(shift2.user_id).to be(2)
      end
    end
  end


end
