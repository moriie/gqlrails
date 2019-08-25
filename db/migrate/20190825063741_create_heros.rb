class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :level
      t.integer :attack
      t.string :defense
      t.string :integer
      t.string :class

      t.timestamps
    end
  end
end
