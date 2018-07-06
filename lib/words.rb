class Words

  @@list = []
  attr_reader :id
  attr_accessor :word
  def initialize(word)
    @word = word
    @id = @@list.length + 1
  end

  def word
    @word
  end

  def id
    @id
  end

  def self.find(id)
     item_id = id.to_i()
     @@list.each do |item|
       if item.id == item_id
         return item
       end
    end
  end

  def self.all()
    @@list
  end

  def img_maker(name)
    "<img src='/images/#{name}.png' alt='#{name} picture' />"
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
   @@list = []
  end
end
