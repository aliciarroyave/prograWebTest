class CreateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :name, null: false
      t.text :descripcion

      t.timestamps
    end
  end
end
