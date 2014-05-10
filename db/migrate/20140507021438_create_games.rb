class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :athlete, index: true
      t.references :sport, index: true
      t.references :high_school, index: true

      t.timestamps
    end
  end
end
