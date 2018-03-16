class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :role
      t.string :school
      t.date :graduation
      t.string :avatar

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
