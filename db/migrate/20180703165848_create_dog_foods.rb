class CreateDogFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_foods do |t|
      t.references :user, foreign_key: true
      t.references :dog, foreign_key: true
      t.string :food_type
      t.integer :cups
      t.integer :can

      t.timestamps
    end
  end
end
