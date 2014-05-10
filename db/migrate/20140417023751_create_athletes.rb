class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end

    create_table :high_schools do |t|
      t.belongs_to :athletes
      t.string :high_school_name
      t.timestamps
    end

  end
end
