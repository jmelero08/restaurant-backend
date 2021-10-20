class RestaurantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description

  # attribute :location do |restaurant|
  #   restaurant.location do |loc|
  #     {
  #       city: loc.city,
  #       state: loc.state,
  #       country: loc.country
  #     }
  #   end
  # end

end
