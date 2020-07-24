class Gallery

  attr_reader :name, :city

  @@all = []
  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|g|
      g.gallery == self
    }
  end

  def artists
    paintings.collect{|a|
      a.artist
    }
  end

  def artist_names
    theones = artists.collect{|a|
      a.name
    }
    theones.uniq
  end

  def most_expensive_painting
    paintings_in_gallery = Painting.all.select{|p|
      p.gallery == self
    }
    
    mostexpensive = 0
    exppainting = nil

    paintings_in_gallery.each {|e|
      if e.price > mostexpensive
        mostexpensive = e.price
        exppainting = e
      end
    }
    return exppainting

  end

end
