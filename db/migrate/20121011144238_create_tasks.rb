class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :complete, default: :false

      t.timestamps #null: false
      # Completa con las columnas que necesites
    end
  end
end
