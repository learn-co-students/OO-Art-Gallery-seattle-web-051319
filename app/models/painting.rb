class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    total = 0
    @@all.each {|p|
      total += p.price
    }
    total
  end
end

#gem uninstall pry-byebug
