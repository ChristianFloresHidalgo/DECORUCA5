class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :price_discount, default: 0
      t.string :photo1
      t.string :photo2
      t.integer :stock
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
