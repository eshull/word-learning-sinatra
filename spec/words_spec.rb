
require('rspec')
require('words')

describe("#find") do
    it("finds an item based on its name") do
      words = Words.new("dog")
      expect(words.word()).to(eq("dog"))
    end
end
describe(".Things") do
  it("creates a new word to learn about") do
    words = Words.new("kiwi")
    expect(Words.all()).to(eq([words.word]))
  end
end
  describe("#save") do
  it("saves an item to the list of items") do
    words = Words.new("kiwi")
    words.save()
    expect(Words.all()).to(eq([words]))
  end
end
describe(".clear") do
  it("clears all items from the list") do
    words = Words.new("kiwi")
    words.save()
    Words.clear()
    expect(Words.all()).to(eq([]))
  end
end
# describe("#things") do
#   it("returns a list") do
#     expect(Things.all()).to(eq([]))
#   end
# end
#   describe("#save") do
#   it("saves an item to the list of items") do
#     things = Things.new("kiwi")
#     things.save()
#     expect(Things.all()).to(eq([things]))
#   end
# end
