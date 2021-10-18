# == Schema Information
#
# Table name: months
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  month_num   :integer          not null
#  month_start :date             not null
#  month_end   :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  year        :date             not null
#
require 'rails_helper'

RSpec.describe Month, type: :model do

  subject(:month) {FactoryBot.build(:month)}

  describe "validations" do

  end

  describe "associations" do

    it { should have_many(:shifts) }
    
  end

  describe "class methods" do
    
    
  end
end
