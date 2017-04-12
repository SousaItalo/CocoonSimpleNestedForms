class CreateInfoProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :info_products do |t|
      t.string :title
      t.string :description
    end
    add_reference :info_products, :product, foreign_key: true
  end
end
