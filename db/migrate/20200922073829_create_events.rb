class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string     :title,         null: false
      t.integer    :country_id,    null: false 
      t.integer    :category_id,   null: false 
      t.datetime   :date,          null: false
      t.string     :place,         null: false
      t.string     :description,   null: false
      t.timestamps
    end
  end
end
