
require('rspec')
require('word')

describe(Word) do
  describe("#find") do
      it("finds an item based on its name") do
        word = Word.new({:word => "dog"})
        expect(word.word()).to(eq("dog"))
      end
  end
  describe("#save") do
    it("saves an item to the list of items") do
      Word.clear()
      word = Word.new({:word => "dog"})
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end
  describe(".clear") do
    it("clears all items from the list") do
      word = Word.new({:word => "dog"})
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
  describe(".find") do
      it("finds an item based on its id") do
        word = Word.new({:word => "banana"})
        word.save()
        word2 = Word.new({:word => "house"})
        word2.save()
        expect(Word.find(1)).to(eq(word))
        expect(Word.find(2)).to(eq(word2))
      end
  end
  describe("#id") do
    it("increments an id by 1 each time a new item is added") do
      Word.clear
      word = Word.new({:word => "banana"})
      word.save()
      word2 = Word.new({:word => "house"})
      word.save()
      expect(word.id()).to(eq(1))
      expect(word2.id()).to(eq(2))
    end
  end
  describe("#id") do
    it("shows the id of instance") do
      Word.clear
      word = Word.new({:word => "banana"})
      word.save()
      word2 = Word.new({:word => "house"})
      word.save()
      expect(word.id()).to(eq(1))
      expect(word2.id()).to(eq(2))
    end
  end
end
