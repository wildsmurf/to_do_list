class CreateToDos < ActiveRecord::Migration[5.1]
  def change
    create_table :to_dos do |t|
      t.string :list
      t.string :description
      t.date :completeby

      t.timestamps
    end
  end
end
