class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name, null: false 
      t.string :caracteristica, null: false 
      t.text :descripcion, null:false
      t.boolean :extinto, default: false



        #created_at update_at

      t.timestamps
    end
  end
end
