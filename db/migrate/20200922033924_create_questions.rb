class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references  :user,          null: false, foreign_key: true
      t.integer     :country_id,    null: false
      t.integer     :category_id,   null: false
      t.integer     :status_id,     null: false
      t.string      :title,         null: false, default: ""
      t.string      :text,          null: false, default: ""
      t.timestamps
    end
  end
end
