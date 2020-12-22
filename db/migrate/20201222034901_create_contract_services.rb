class CreateContractServices < ActiveRecord::Migration[6.0]
  def change
    create_table :contract_services do |t|
      t.contract :references
      t.service :references
      t.decimal :tax_amount
      t.date :tax_paid_date
      t.date :start_date
      t.date :end_date
      t.string :status
      t.string :notes

      t.timestamps
    end
  end
end
