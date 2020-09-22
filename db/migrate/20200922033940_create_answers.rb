class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references  :user,          null: false, foreign_key: true
      t.references  :question,      null: false, foreign_key: true
      t.string      :text,          null: false, default: ""
      t.timestamps
    end
  end
end
