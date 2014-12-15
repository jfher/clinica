class AddAnaisisRefToUsers < ActiveRecord::Migration
  def change
  	add_reference :analises, :user, index: true
  end
end
