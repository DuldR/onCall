json.set! @shift.id do
    json.extract! @shift, :shift_start, :shift_end, :user_id, :month_id
end