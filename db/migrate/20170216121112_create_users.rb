class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :profile_img
      t.string :password_digest
      t.string :username
      t.string :telephone_no
      t.string :first_name
      t.string :last_name
      t.string :address_first_line
      t.string :address_second_line
      t.string :address_city
      t.string :address_postcode
      t.timestamps
    end
  end
end
