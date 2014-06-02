class CreateReagents < ActiveRecord::Migration
  def change
    create_table :reagents do |t|
      t.string :name
      t.string :picture
      t.string :trait_1
      t.string :trait_2
      t.string :trait_3
      t.string :trait_4

      t.timestamps
    end
  end
end
