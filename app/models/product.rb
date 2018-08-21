class Product < ApplicationRecord
	 mount_uploader :avatar, AvatarUploader
	 belongs_to :brand
	 belongs_to :category

	
end
