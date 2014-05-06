class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :fan_id
      t.integer :follow_id

      t.timestamps
    end
    add_index :relationships, :fan_id
    add_index :relationships, :follow_id
    add_index :relationships, [:fan_id, :follow_id], unique: true
  end
end
