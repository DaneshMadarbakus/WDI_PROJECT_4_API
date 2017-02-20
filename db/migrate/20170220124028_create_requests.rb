class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.date :start_time
      t.date :end_time
      t.references :user, foreign_key: true
      t.references :suit, foreign_key: true

      t.timestamps
    end
  end
end
