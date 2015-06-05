class CreateTardies < ActiveRecord::Migration
  def change
    create_table :tardies do |t|
      t.date :date
      t.boolean :present

      t.timestamps null: false
    end
  end
end
