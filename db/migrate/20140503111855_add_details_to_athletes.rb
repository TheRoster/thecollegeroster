class AddDetailsToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :grad_year, :integer
    add_column :athletes, :height, :string
    add_column :athletes, :weight, :integer
    add_column :athletes, :sat, :integer
    add_column :athletes, :act, :integer
    add_column :athletes, :gpa, :decimal, precision: 2, scale: 1
    add_column :athletes, :class_rank, :integer
  end
end
