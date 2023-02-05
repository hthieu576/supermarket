# README

Example:

itemA = Item.new("A", 3)

itemB = Item.new( "B", 6)

co = Checkout.new(Array(BulkPricingRule.new("A", 3, 3, 8.5)))

co.scan(itemA)

co.scan(itemB)

price = co.total
puts price
