class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.string :email
      t.string :home_adress
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
