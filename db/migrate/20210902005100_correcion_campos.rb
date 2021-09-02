class CorrecionCampos < ActiveRecord::Migration[6.1]
  def change
    remove_column :animals, :caracteristica, :string
    add_column :animals, :tamaño, :decimal 
    add_column :animals, :sexualidad, :boolean
    add_column :animals, :genero, :decimal
    add_column :animals, :foto, :string
    add_column :animals, :nombreCien, :string
  end
end
