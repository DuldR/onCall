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
FactoryBot.define do
    factory :user do
        id {1}
        name {"TestMan"}
        on_call { true }
        swap_request { false }
        
    end
end
