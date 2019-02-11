class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :weight
      t.string :gender
      t.string :image_url
      t.integer :age
      t.text :about
      t.integer :user_id
      t.integer :animal_id

      t.timestamps
    end
  end
end
