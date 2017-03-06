class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :age
      t.string :email
      t.string :homeAddr
      t.string :surname

      t.timestamps null: false
    end
  end
end
