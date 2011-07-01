class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :website
      t.integer :owner_id
      t.text :description

      t.timestamps
    end
  end
end
