class CreateValors < ActiveRecord::Migration
  def change
    create_table :valors do |t|
      t.string :nombre
      t.integer :rangoMax
      t.integer :rangoMin

      t.timestamps
    end
  end
end
