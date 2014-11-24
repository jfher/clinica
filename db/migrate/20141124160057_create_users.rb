class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :cuenta
      t.string :nombre
      t.string :password
      t.string :password_confirmation
      t.string :password_digest

      t.timestamps
    end
  end
end
