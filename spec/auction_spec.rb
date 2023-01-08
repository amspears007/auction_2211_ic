require'./lib/auction'
require './lib/attendee'
require './lib/item'

RSpec.describe Auction do
  it 'exists and starts with no items' do
    auction = Auction.new

    expect(auction).to be_a(Auction)
    expect(auction.items).to eq([])
  end
end