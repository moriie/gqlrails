class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :attack
      t.string :integer
      t.string :effect
      t.string :string

      t.timestamps
    end
  end
end
