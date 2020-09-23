class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :date_of_birth
      t.string :pet_type
    end
    add_index :pets, :pet_type
  end
end
