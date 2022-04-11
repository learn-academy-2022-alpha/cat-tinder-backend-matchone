require 'rails_helper'

# RSpec.describe Cat, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe Cat, type: :model do
  it "name should not be empty" do
    cat = Cat.create age: 5, enjoys: 'Furrrrociously hunting bugs.'
    expect(cat.errors[:name]).to_not be_empty
  end
end

RSpec.describe Cat, type: :model do
  it "age should not be empty" do
    cat = Cat.create name: 'Jack', enjoys: 'Furrrrociously hunting bugs.'
    expect(cat.errors[:age]).to_not be_empty
  end
end

RSpec.describe Cat, type: :model do
  it "enjoys should not be empty" do
    cat = Cat.create name: 'Jack', age: 5
    expect(cat.errors[:enjoys]).to_not be_empty
  end
end

RSpec.describe Cat, type: :model do
  it 'is not valid if enjoys is at least 10 characters' do
    jack = Cat.create name: 'Jack', age: 5, enjoys: 'bugs', image: 'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1049&q=80'
    expect(jack.errors[:enjoys]).to_not be_empty
  end
end