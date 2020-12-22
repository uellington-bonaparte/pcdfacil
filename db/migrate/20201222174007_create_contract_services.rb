class CreateContractServices < ActiveRecord::Migration[6.0]
  def change
    create_table :contract_services do |t|
      t.references :contract, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.decimal :tax_paid_amount
      t.date :tax_paid_date
      t.date :start_date
      t.date :end_date
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
