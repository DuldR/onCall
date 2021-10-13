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
class User < ApplicationRecord

    validates :name, presence: true, uniqueness: true
    validates :on_call, presence: true
    validates :swap_request, presence: true
end
