require_relative 'pricing_rule'

class BulkPricingRule < PricingRule
  def initialize(item_name, item_price, items_in_package, package_price)
    @item_name = item_name
    @item_price = item_price
    @items_in_package = items_in_package
    @package_price = package_price
  end

  def price_for(quantity)
    packages = quantity / @items_in_package
    modulo = quantity % @items_in_package
    (packages * @package_price) + (modulo * @item_price)
  end
end