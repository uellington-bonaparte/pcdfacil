class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.user :references
      t.recipient :references
      t.decimal :discount
      t.decimal :final_price
      t.boolean :paid
      t.string :vehicle_brand
      t.string :vehicle_model
      t.integer :vehicle_year
      t.date :vehicle_order_date
      t.date :invoice_date
      t.string :vehicle_license
      t.string :renavam
      t.date :end_block_date
      t.boolean :have_insurance
      t.string :insurance_vendor
      t.string :insurance_company
      t.date :insurance_due_date
      t.budget :insurance
      t.string :rating
      t.string :review

      t.timestamps
    end
  end
end
