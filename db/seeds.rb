1.upto(20) do |i|
  Item.create!(name: "商品名_#{i}", price: 100 * i)
end
