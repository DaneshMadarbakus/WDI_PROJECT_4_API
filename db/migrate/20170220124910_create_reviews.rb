class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :suit, foreign_key: true
      t.integer :score
      t.text :comment

      t.timestamps
    end
  end
end
