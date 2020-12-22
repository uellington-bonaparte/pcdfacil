class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :recipient, null: false, foreign_key: true
      t.decimal :discount
      t.decimal :final_price
      t.boolean :paid
      t.string :vehicle_brand
      t.string :vehicle_model
      t.integer :vehicle_year
      t.date :vehicle_order_date
      t.date :vehicle_invoice_date
      t.string :vehicle_license
      t.string :renavam
      t.date :end_block_date
      t.boolean :have_insurance
      t.string :insurance_vendor
      t.string :insurance_company
      t.date :insurance_due_date
      t.decimal :insurance_budget
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
