# == Schema Information
#
# Table name: swaps
#
#  id              :bigint           not null, primary key
#  user_id         :integer          not null
#  shift_id        :integer          not null
#  target_id       :integer          not null
#  target_shift_id :integer          not null
#  origin_approve  :boolean          default(TRUE)
#  target_approve  :integer          default(0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Swap < ApplicationRecord

    validates :user_id, :shift_id, :target_id, :target_shift_id, :origin_approve, presence: true
    validates :target_approve, :inclusion => { :in => [0, 1, -1]}

    belongs_to :user

    has_one :user_shift, :foreign_key => "id", :primary_key => "shift_id", :class_name => "Shift"
    has_one :target_shift, :foreign_key => "id", :primary_key => "target_shift_id", :class_name => "Shift"

    def judge_swap(input)

        # Make judgement of this on front end. Utilize back end to make DB update
        # If 1, yes, swap user IDs on the shift.
        # If 0 or -1, do nothing except set the target approval. 0 is pending and -1 is no

        if (input == 1)

            # Get the shift IDs
            shift_1 = self.user_shift.id
            shift_2 = self.target_shift.id

            # Update the user_ids with the shift ids. This ties the shift to the user
            self.user_shift.user_id = shift_2
            self.target_shift.user_id = shift_1

            # Call validations
            self.user_shift.save!
            self.target_shift.save!

            self.target_approve = 1
            self.save!

        elsif (input == -1)
            self.target_approve = -1
            self.save!
        end

    end
end
