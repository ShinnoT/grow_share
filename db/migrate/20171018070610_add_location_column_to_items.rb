class AddLocationColumnToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :longitude, :float
    add_column :items, :latitude, :float
  end
end
