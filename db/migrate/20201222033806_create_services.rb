class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.decimal :tax_amount
      t.text :notes
      t.boolean :active

      t.timestamps
    end
  end
end
