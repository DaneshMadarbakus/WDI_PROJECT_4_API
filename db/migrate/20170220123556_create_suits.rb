class CreateSuits < ActiveRecord::Migration[5.0]
  def change
    create_table :suits do |t|
      t.string :image
      t.string :title
      t.string :brand
      t.string :colour
      t.string :jacket_chest
      t.string :jacket_length
      t.string :jacket_shoulder_length
      t.string :jacket_sleeve
      t.string :jacket_waist
      t.string :trouser_waist
      t.string :trouser_length
      t.string :trouser_front_rise
      t.text :notes
      t.integer :deposit
      t.integer :daily_price
      t.string :fit
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
