class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :product, index: true, foreign_key: true
      t.string :remote_url

      t.timestamps null: false
    end
    add_attachment :photos, :image
  end
end
