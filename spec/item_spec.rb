require './lib/item'
require'./lib/auction'
require './lib/attendee'

RSpec.describe Item do
  it 'exists and has a name' do
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')

    expect(item1).to be_a(Item)
    expect(item1.name).to eq('Chalkware Piggy Bank')
  end

  it 'starts with no bids but then adds them' do
    auction = Auction.new

    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')
    item3 = Item.new('Homemade Chocolate Chip Cookies')
    item4 = Item.new('2 Days Dogsitting')
    item5 = Item.new('Forever Stamps')

    attendee1 = Attendee.new(name: 'Megan', budget: '$50')
    attendee2 = Attendee.new(name: 'Bob', budget: '$75')
    attendee3 = Attendee.new(name: 'Mike', budget: '$100')

    expect(item1.bids).to eq({})

    item1.add_bid(attendee2, 20)
    item1.add_bid(attendee1, 22)

    expect(item1.bids).to eq({ attendee2 => 20, attendee1 => 22 })
  end
end