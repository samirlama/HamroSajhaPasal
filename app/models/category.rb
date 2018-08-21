class Category < ApplicationRecord
	has_many :products
	def to_s #converts object to object name in admin panel while creating products
		self.category_name
	end
end
