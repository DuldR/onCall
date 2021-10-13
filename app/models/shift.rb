# == Schema Information
#
# Table name: shifts
#
#  id          :bigint           not null, primary key
#  shift_start :datetime         not null
#  shift_end   :datetime         not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Shift < ApplicationRecord
end
