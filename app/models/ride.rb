class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user

  def take_ride
    if user.height < self.attraction.min_height && user.tickets < self.attraction.tickets
      "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif user.height < self.attraction.min_height
      "Sorry. You are not tall enough to ride the #{attraction.name}."
    elsif user.tickets < self.attraction.tickets
      "Sorry. You do not have enough tickets the #{attraction.name}."
    else
      self.user.update(
        tickets: (self.user.tickets -= self.attraction.tickets),
        nausea: (self.user.nausea += self.attraction.nausea_rating),
        happiness: (self.user.happiness += self.attraction.happiness_rating))
        "Thanks for riding the #{self.attraction.name}!"
    end
  end

end
