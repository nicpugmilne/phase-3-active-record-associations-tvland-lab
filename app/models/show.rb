class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.map { |actor| actor.full_name }
  end
end

# - An actor has many characters and has many shows through characters.
# - A character belongs to an actor and belongs to a show.
# - A show has many characters and has many actors through characters.
