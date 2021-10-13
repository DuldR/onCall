class User < ApplicationRecord

    validates :name, presence: true, uniqueness: true
    validates :on_call, presence: true
    validates :swap_request, presence: true
end
