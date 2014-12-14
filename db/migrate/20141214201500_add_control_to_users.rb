class AddControlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :control, :boolean
  end
end
