class CreateHighSchools < ActiveRecord::Migration
  def change
    create_table :high_schools do |t|
      t.string :name
      t.string :city
      t.string :state
    end
  end
end
