class AddAnalisisRefToValors < ActiveRecord::Migration
  def change
    add_reference :valors, :valor, index: true
  end
end
