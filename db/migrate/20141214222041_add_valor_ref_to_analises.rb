class AddValorRefToAnalises < ActiveRecord::Migration
  def change
  	add_reference :valors, :analise, index: true
  end
end
