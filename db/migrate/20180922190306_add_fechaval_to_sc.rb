class AddFechavalToSc < ActiveRecord::Migration[5.2]
  def change
    add_column :scs, :fechaval, :string
  end
end
