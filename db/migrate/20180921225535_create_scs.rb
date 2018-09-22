class CreateScs < ActiveRecord::Migration[5.2]
  def change
    create_table :scs do |t|
      t.string :qad_id
      t.string :siv_id
      t.string :rut
      t.string :client_name
      t.string :name
      t.string :sku
      t.string :umx
      t.string :siv_code
      t.string :kind
      t.string :sub_kind
      t.string :materials
      t.string :structure

      t.timestamps
    end
  end
end
