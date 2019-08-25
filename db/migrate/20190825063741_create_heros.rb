class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :level
      t.integer :attack
      t.integer :defense
      t.string :heroclass

      t.timestamps
    end
  end
end
