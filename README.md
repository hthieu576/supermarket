# README

Example:
itemA = Item.new("A", 3.1)
itemB = Item.new( "B", 6.2)
co = Checkout.new(Array(BulkPricingRule.new("A", 3.1, 3, 8.3)))
co.scan(itemA)
co.scan(itemB)

price = co.total
puts price
