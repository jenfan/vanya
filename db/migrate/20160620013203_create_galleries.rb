class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :description
      t.text :full_description
      t.decimal :price

      t.timestamps null: false
    end
    add_attachment :galleries, :image
  end
end
