class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.references :high_school, index: true
      t.references :sport, index: true
      t.references :position, index: true

      t.timestamps
    end

  end
end
