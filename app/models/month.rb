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

    private

    def fill_month

        # Can refactor this to allow for multiple years
        year = Time.now.year

        month_hash = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}

        self.name = month_hash[self.month_num]
        self.month_start = Date.new(year, self.month_num, 1)
        self.month_end = self.month_start.end_of_month
    end
end
