require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.references :teacher
      t.references :student
      # t.integer :teacher_id
      # t.integer :student_id
    end
  end
end
