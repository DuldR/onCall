# == Schema Information
#
# Table name: months
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  month_num   :integer          not null
#  month_start :datetime         not null
#  month_end   :datetime         not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Month < ApplicationRecord
end
