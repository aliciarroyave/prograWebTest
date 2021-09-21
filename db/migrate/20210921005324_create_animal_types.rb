class CreateAnimalTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :animal_types do |t|
      t.references :animal, null: false, index: true
      t.references :type, null: false, index: true
      t.timestamps
    end
  end
end
