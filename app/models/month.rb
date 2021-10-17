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
    before_save :fill_month

    has_many :shifts





    # private

    def fill_month
        month_hash = {1 => "January"}

        self.name = month_hash[self.month_num]

    end
end
