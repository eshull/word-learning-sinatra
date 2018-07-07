
require('rspec')
require('words')

describe("#find") do
    it("finds an item based on its name") do
      words = Words.new("dog")
      expect(words.word()).to(eq("dog"))
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
describe(".find") do
    it("finds an item based on its id") do
      words = Words.new("banana")
      words.save()
      words2 = Words.new("house")
      words2.save()
      expect(Words.find(1)).to(eq(words))
      expect(Words.find(2)).to(eq(words2))
    end
end
describe("#id") do
  it("increments an id by 1 each time a new item is added") do
    Words.clear
    words = Words.new("banana")
    words.save()
    words2 = Words.new("house")
    words.save()
    expect(words.id()).to(eq(1))
    expect(words2.id()).to(eq(2))
  end
end
describe("#id") do
  it("shows the id of instance") do
    Words.clear
    words = Words.new("banana")
    words.save()
    words2 = Words.new("house")
    words.save()
    expect(words.id()).to(eq(1))
    expect(words2.id()).to(eq(2))
  end
end
