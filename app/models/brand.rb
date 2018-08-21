class Brand < ApplicationRecord
	has_many :products
	def to_s #converts object to object name in admin panel while creating products
		self.brand_name
	end	
end
