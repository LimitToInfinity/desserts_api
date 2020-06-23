class CreateDesserts < ActiveRecord::Migration[6.0]
  def change
    create_table :desserts do |t|
      t.string :title
      t.integer :rating

      t.timestamps
    end
  end
end
