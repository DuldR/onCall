@users.each do |user|
    json.set! user.id do
        json.extract! user, :id, :name, :on_call, :swap_request
    end
end