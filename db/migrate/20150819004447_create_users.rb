class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :name
      t.string   :gender
      t.string   :username
      t.string   :password_hash
      t.string   :email
      t.text     :about_me
      t.boolean  :is_private, default: false

      t.timestamps null: false
    end
  end
end
