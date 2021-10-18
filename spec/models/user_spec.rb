# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  name         :string
#  on_call      :boolean          default(FALSE)
#  swap_request :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do

  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  describe "asssociations" do
    it { should have_many(:shifts) }
    it { should have_many(:swaps) }

  end

  describe "class methods" do

    subject(:user) {FactoryBot.create(:user)}
    let!(:month) {FactoryBot.create(:month)}

    it "should take a start and end date and create a shift" do
      
      user.add_shift(Date.new(2021, 1, 3), Date.new(2021, 1, 14))

      expect(Shift.last.shift_start).to eq(Date.new(2021, 1, 3))
      expect(Shift.last.shift_end).to eq(Date.new(2021, 1, 14))
      expect(Shift.last.user_id).to eq(1)
      expect(Shift.last.month_id).to eq(1)
    end
  end

end
