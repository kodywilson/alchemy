class CreateSolvents < ActiveRecord::Migration
  def change
    create_table :solvents do |t|
      t.string :name
      t.string :picture
      t.string :level

      t.timestamps
    end
  end
end
