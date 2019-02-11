class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :weight
      t.string :gender
      t.string :image_url
      t.integer :age
      t.integer :user_id
      t.integer :animal_id
      t.text :about
      t.boolean :adopted

      t.timestamps
    end
  end
end
