class AddColumnToValors < ActiveRecord::Migration
  def change
  	add_column :valors, :value, :integer
  end
end
