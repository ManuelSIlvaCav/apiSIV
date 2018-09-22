class AddFechacreacionToSc < ActiveRecord::Migration[5.2]
  def change
    add_column :scs, :fechacreacion, :string
  end
end
