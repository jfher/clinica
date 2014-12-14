class RemoveValorsRefToAnalisis < ActiveRecord::Migration
  def change
  	remove_reference :valors, :valor, index: true
  end
end
