class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer  :poster_id
      t.integer  :receiver_id
      t.string   :name
      t.string   :description
      t.string   :time
      t.string   :location
      t.boolean  :is_private, default: false
      t.boolean  :accepted, default: false

      t.timestamps null: false
    end
  end
end
