class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.contract :references
      t.date :date
      t.decimal :amount
      t.text :note

      t.timestamps
    end
  end
end
