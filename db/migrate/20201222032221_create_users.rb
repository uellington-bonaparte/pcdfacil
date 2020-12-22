class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :phone_number1
      t.string :phone_number2
      t.string :email
      t.string :password
      t.text :notes
      t.boolean :client
      t.boolean :admin
      t.boolean :active

      t.timestamps
    end
  end
end
