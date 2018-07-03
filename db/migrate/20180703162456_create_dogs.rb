class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.references :user, foreign_key: true
      t.text :name
      t.integer :weight
      t.integer :age

      t.timestamps
    end
  end
end
