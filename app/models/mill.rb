class Mill < ActiveRecord::Base
  attr_accessible :address, :city, :state, :country, :fax, :name, :postal_code, :telephone
end
