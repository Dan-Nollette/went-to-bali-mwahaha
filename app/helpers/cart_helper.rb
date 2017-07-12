module CartHelper
  def cart_items
    current_order.order_items.length
  end
end
