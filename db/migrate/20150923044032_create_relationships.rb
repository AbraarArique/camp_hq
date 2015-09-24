class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :user, index: true, null: false
      t.references :task, index: true, null: false

      t.timestamps null: false
    end
  end
end
