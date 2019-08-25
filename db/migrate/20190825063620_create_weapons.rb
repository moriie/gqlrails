class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :attack
      t.string :effect

      t.timestamps
    end
  end
end
