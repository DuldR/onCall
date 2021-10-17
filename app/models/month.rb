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
class Month < ApplicationRecord

    validates :name, :month_num, :month_start, :month_end, presence: true

    has_many :shifts

    def initialize(month_num)
        super



    end

    def get_days

    end
end
