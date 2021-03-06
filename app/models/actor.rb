class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name

    first_last_name = self.first_name + " " + self.last_name
    first_last_name

  end

  def list_roles

    self.characters.collect do |char|
      binding.pry
      char.name + " - " + char.show.name

    end



  end

end
