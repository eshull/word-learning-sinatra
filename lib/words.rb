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

  def img_maker
    "<img src='/images/#{@word}.png' alt='#{@word} picture' />"
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
   @@list = []
  end
end

class Definition

  @@definitions = []
  attr_reader :id
  attr_accessor :definition
  def initialize(definition)
    @definition = definition
    @id = @@definitions.length + 1
  end

  def show_definition
    @definition
  end

  def id
    @id
  end

  def self.find(id)
     item_id = id.to_i()
     @@definition.each do |item|
       if item.id == item_id
         return item
       end
    end
  end

  def self.all()
    @@definitions
  end

  # def img_maker
  #   "<img src='/images/#{@word}.png' alt='#{@word} picture' />"
  # end

  def save()
    @@definitions.push(self)
  end

  def self.clear()
   @@definitions = []
  end
end
