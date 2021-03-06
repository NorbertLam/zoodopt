class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :profile_image
      t.string :about
      t.integer :age

      t.timestamps
    end
  end
end
