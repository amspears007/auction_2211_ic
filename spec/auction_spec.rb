require'./lib/auction'
require './lib/attendee'
require './lib/item'

RSpec.describe Auction do
  it 'exists and starts with no items' do
    auction = Auction.new

    expect(auction).to be_a(Auction)
    expect(auction.items).to eq([])
  end

  it 'can have items with names added' do
    auction = Auction.new
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')

    auction.add_item(item1)
    auction.add_item(item2)

    expect(auction.items).to eq([item1, item2])
    expect(auction.item_names).to eq(['Chalkware Piggy Bank','Bamboo Picture Frame'])
  end
end