class CreateAdoption < ActiveRecord::Migration[6.0]
  def change
    create_table :adoptions do |t|
      t.string :name
      t.date :date
      t.references :pet, null: false, foreign_key: true
    end
  end
end
