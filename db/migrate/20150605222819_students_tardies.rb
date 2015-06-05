class StudentsTardy < ActiveRecord::Migration
  def change
    create_table :students_tardies, id: false do |t|
      t.belongs_to :tardy, index: true
      t.belongs_to :student, index: true
    end
  end
end
