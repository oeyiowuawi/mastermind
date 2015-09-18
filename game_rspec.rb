require_relative 'game'
RSpec.describe "Game" do
it "returns exact matches" do
matches =  Game.new("rrby","gryy").exacts
expect(matches).to eq(2)
end
it "returns partial matches" do
  subject =  Game.new("rrby","rryb")
  matches = subject.partials
  expect(matches).to eq(2)
end
it "returns exact matches" do
  subject =  Game.new("gggr","ggyb")
  matches = subject.exacts
  expect(matches).to eq(2)
end
it "returns partial matches" do
  subject =  Game.new("gggr","ggyb")
  matches = subject.partials
  expect(matches).to eq(0)
end
it "returns exact matches" do
subject =  Game.new("gryiob","rgyygr")
matches = subject.exacts
expect(matches).to eq(1)
end
it "returns partial matches" do
  subject =  Game.new("gryiob","rgyygr")
  matches = subject.partials
  expect(matches).to eq(2)
end
it "returns exact matches" do
subject =  Game.new("ioyboyyg","gryoogyy")
matches = subject.exacts
expect(matches).to eq(3)
end
it "returns partial matches" do
  subject =  Game.new("ioyboyyg","gryoogyy")
  matches = subject.partials
  expect(matches).to eq(3)
end
end
