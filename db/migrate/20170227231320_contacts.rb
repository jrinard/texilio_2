class Contacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
        t.string :username
        t.string :phone
        t.string :email
        t.integer :user_id
    end
  end
end
