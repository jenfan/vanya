class AddFullDescriptionToProduct < ActiveRecord::Migration
  def change
    add_column :products, :full_description, :text
  end
end
