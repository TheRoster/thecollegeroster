class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :stat_name
      t.references :athlete, index: true
      t.references :sport, index: true
      t.integer :value

      t.timestamps
    end
  end
end
