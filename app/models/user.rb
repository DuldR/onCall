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
    has_many :requests, :foreign_key => "target_id", :class_name => "Swap"
    
end
