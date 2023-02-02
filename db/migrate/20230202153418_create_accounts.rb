class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.references :main_location_address, null: true, foreign_key: { to_table: :addresses }
      t.timestamps
    end
  end
end
