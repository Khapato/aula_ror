class AddDispChaves < ActiveRecord::Migration[7.1]
  def change
  	add_column :chaves, :disp, :boolean
  end
end
