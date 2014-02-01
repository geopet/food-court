class ChangeColumnNameOnInspections < ActiveRecord::Migration
  def change
    rename_column :inspections, :type, :inspection_type
  end
end
