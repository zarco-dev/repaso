# * 1.	Define an Animal with an initialize(name) constructor, exposing its name.

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.phyla
    %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
  end

  def eat(food)
    "#{@name} eats a #{food}"
  end
end


# * 2.	Define three Lion, Meerkat and Warthog classes

# * 3.	Implement a #talk instance method which returns a sentence like "Simba roars" for each animal. (Hint: Meerkats bark and Warthog grunt)


# * 4.	In another Ruby file, create an array with Simba, Nala, Timon & Pumbaa, iterate over it and puts the sound each animal make


# * 5.	Implement a ::phyla class method which will return an array of the four phyla of the animal kingdom.
# * Deuterostomia, Ecdysozoa, Lophotrochozoa, Radiata


# * 6.	Add an #eat(food) instance method in Animal which returns a sentence like “Timon eats a scorpion”. Then override this method for the Lion class, and return a sentence like “Simba eats a gazelle. Law of the Jungle!”
