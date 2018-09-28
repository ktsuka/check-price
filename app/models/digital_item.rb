class DigitalItem < ActiveRecord::Base
    def self.check(date)
        rel = where("itemid LIKE ?", "#{date}%")  
    end
end
