class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.string :product_name
    	t.string :avatar
    	t.text   :description
    	t.integer :brand_id
    	t.integer :category_id
      t.timestamps

    end
    add_index :products , :brand_id
    add_index :products , :category_id
  end
end
