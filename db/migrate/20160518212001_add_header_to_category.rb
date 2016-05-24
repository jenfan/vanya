class AddHeaderToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :header, :string
  end
end
