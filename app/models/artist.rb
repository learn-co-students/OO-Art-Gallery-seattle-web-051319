class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def paintings
    Painting.all.select{|p|
      p.artist == self
    }
  end

  def galleries
      paintings.collect{|g|
        g.gallery
      }
  end

  def cities
    galleries.collect{|c|
      c.city
    }
  end

  def self.total_experience
    totalexp = 0
    @@all.each {|a|
        totalexp += a.years_experience
    }
    totalexp
  end

  def self.most_prolific
    highestexp = 0
    mvp = nil
    @@all.each {|a|
      if a.years_experience > highestexp
        highestexp = a.years_experience
        mvp = a
      end

    }
    mvp

  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.all
    @@all
  end

end
