class Word

  @@word_list = []
  @@definitions = []

  attr_reader :id
  attr_accessor :definition
  attr_accessor :word
  attr_accessor :definition_array

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = definition
    @id = @@word_list.length + 1
    @definition_array = []
  end

  def word
    @word
  end

  def id
    @id
  end


  def self.find(id)
     item_id = id.to_i()
     @@word_list.each do |item|
       if item.id == item_id
         return item
       end
    end
  end

  def self.all()
    @@word_list
  end

  def img_maker
    "<img src='/images/#{@word}.png' alt='#{@word} picture' />"
  end

  def save()
    @@word_list.push(self)
  end

  def definition_save(definition)
    @definition_array.push(definition)
  end

  def self.clear()
   @@word_list = []
  end

end

# class Definition
#
#   @@definitions = []
#   attr_reader :id
#   attr_accessor :definition
#   def initialize(definition)
#     @definition = definition
#     @id = @@definitions.length + 1
#   end
#
#   def show_definition
#     @definition
#   end
#
#   def def_id
#     @id
#   end
#
#   def self.find(id)
#      item_id = id.to_i()
#      @@definitions.each do |item|
#        if item.id == item_id
#          return item
#        end
#     end
#   end
# //
#   def self.all()
#     @@definitions
#   end
#
#   def save()
#     @@definitions.push(self)
#   end
#
#   def self.clear()
#    @@definitions = []
#   end
# end
