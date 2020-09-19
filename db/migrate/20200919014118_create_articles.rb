class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.references  :user,           null: false, foreign_key: true
      t.string      :title,          null: false, default: ""
      t.string      :category,       null: false, default: ""
      t.integer     :country_id,     null: false
      t.string      :description,    null: false, default: ""
      t.timestamps
    end
  end
end
