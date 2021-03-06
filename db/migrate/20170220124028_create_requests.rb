class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.datetime   :start_time
      t.datetime   :end_time
      t.references :user, foreign_key: true
      t.references :suit, foreign_key: true

      t.timestamps
    end
  end
end
