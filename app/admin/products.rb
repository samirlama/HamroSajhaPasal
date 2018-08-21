ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :product_name , :avatar , :description , :brand_id , :category_id
filter :brand, :collection => proc {(Brand.all).map{|c| [c.brand_name, c.id]}}
filter :category, :collection => proc {(Category.all).map{|c| [c.category_name, c.id]}}


	


end
