class CreateCats < ActiveRecord::Migration[7.0]
  def change
    create_table :cats do |t|
      t.string :description
      t.string :photo
      t.string :location
      t.string :gender
      t.string :fixed
      t.string :fed
      t.string :touch
      t.string :health
      t.string :identifier
      t.string :friendly

      t.timestamps
    end
  end
end
