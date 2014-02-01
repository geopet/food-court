class CreateBusinessesTable < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :business_id
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :phone_number

      t.timestamps
      t.index :business_id
    end
  end
end
