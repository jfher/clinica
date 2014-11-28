class CreateAnalises < ActiveRecord::Migration
  def change
    create_table :analises do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
