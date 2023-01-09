class Auction
  attr_reader :items
  
  def initialize
    @items = []
  end

  def add_item(item)
    items << item
  end

  def item_names
    items.map do |item|
      item.name
    end
  end

  def unpopular_items
    items.select do |item|
      item.bids == {}
    end
  end

  def potential_revenue
    final_bids = []
    items.each do |item|
      final_bids << item if item.bids != {}
    end
    final_bids
  end

end

