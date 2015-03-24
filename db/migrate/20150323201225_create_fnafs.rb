class CreateFnafs < ActiveRecord::Migration
  def change
    create_table :fnafs do |t|
      t.text :name
      t.binary :picture
      t.text :species
      t.text :gender
      t.boolean :first_game
      t.boolean :second_game
      t.boolean :third_game

      t.timestamps
    end
  end
end
