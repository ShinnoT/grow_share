class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.date :good_until
      t.string :category
      t.integer :quantity
      t.string :indicator

      t.timestamps
    end
  end
end
