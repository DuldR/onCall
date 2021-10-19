@swaps.each do |swap|
    json.set! swap.id do
        json.extract! swap, :id, :user_id, :shift_id, :target_id, :target_shift_id, :origin_approve, :target_approve
    end
end