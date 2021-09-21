class CreateAnimalHabitats < ActiveRecord::Migration[6.1]
  def change
    create_table :animal_habitats do |t|
      t.references :animal, null: false, index: true
      t.references :habitat, null: false, index: true
      t.timestamps
    end
  end
end
