require './lib/item'

RSpec.describe. do
  it 'exists and has a name' do
    item1 = Item.new('Chalkware Piggy Bank')

    expect(item1).to be_a(Item)

  end
end