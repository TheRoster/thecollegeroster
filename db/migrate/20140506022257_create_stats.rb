class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :points
      t.integer :rebounds
      t.integer :assists
      t.integer :steals
      t.integer :blocks
      t.integer :turnovers
      t.integer :minutes_played
      t.date :date_played
      t.references :athlete, index: true
      t.references :sport, index: true
      t.references :position, index: true

      t.timestamps
    end
  end
end
