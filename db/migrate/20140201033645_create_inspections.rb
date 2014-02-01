class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.string :business_id
      t.integer :score
      t.date :date
      t.text :Description
      t.string :type

      t.timestamps
      t.index :business_id
    end
  end
end
