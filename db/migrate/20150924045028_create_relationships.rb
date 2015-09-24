class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :task
      t.references :user

      t.timestamps null: false
    end
  end
end
