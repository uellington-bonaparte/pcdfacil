class CreateRecipients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :cpf
      t.string :pathology
      t.date :birth_date
      t.string :sus_number
      t.string :irpf_receipt
      t.string :voter_registration
      t.string :sisen_user
      t.string :sisen_password
      t.text :notes

      t.timestamps
    end
  end
end
