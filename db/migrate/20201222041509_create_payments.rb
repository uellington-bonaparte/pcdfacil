class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.date :date
      t.references :contract, null: false, foreign_key: true
      t.decimal :amount
      t.text :note

      t.timestamps
    end
  end
end
