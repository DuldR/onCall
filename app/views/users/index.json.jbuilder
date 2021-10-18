@users.each do |user|
    json.set! user.id do
        json.extract! user, :name, :on_call, :swap_request
    end
end