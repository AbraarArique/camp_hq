class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :about
      t.string :status

      t.timestamps null: false
    end
  end
end
