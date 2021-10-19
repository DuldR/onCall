@shifts.each do |shift|
    json.set! shift.id do
        json.extract! shift, :id, :shift_start, :shift_end, :user_id, :month_id
    end
end