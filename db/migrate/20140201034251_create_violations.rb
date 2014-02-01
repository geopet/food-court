class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.string :business_id
      t.date :date
      t.string :code
      t.text :description

      t.timestamps
      t.index :business_id
    end
  end
end
