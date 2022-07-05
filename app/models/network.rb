class Network < ActiveRecord::Base
  has_many :shows

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end

# - An actor has many characters and has many shows through characters.
# - A character belongs to an actor and belongs to a show.
# - A show has many characters and has many actors through characters.
