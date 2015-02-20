module UsersHelper

  def city_data
    lambda { |city| "#{city.name}, #{city.short_name}" }
  end

end