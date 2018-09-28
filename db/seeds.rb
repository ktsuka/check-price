require "csv"

CSV.foreach('db/data/ishibashi_digital_201809281716.csv') do |row|
  DigitalItem.create(:itemid => row[0], :store => row[1], :name => row[2], :price => row[3], :maker => row[4],
                     :istatus => row[5], :itype => row[6], :memo => row[7])
end
