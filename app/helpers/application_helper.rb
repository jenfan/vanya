module ApplicationHelper
  def price(decimal)
    price = ('%.0f' % decimal).to_s
    price[-4] = price[-4] + ' '
    price[-8] = price[-8] + ' ' if price.size >= 8
    price + ' руб.'
  end
end
