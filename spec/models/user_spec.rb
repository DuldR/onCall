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

  end

end
