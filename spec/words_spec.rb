
require('rspec')
require('words')

describe("#find") do
    it("finds an item based on its name") do
      words = Words.new("dog")
      expect(words.find()).to(eq("dog"))
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
