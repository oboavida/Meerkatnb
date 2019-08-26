class CreateMeerkats < ActiveRecord::Migration[5.2]
  def change
    create_table :meerkats do |t|
      t.string :name
      t.string :specialty
      t.integer :age
      t.integer :price
      t.string :photo
      t.string :location
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
