class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.references :category

      t.timestamps null: false
    end
    add_attachment :products, :image
  end
end
