class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.text :title
      t.blob :content
      t.references :user, index: true, null: false

      t.timestamps
    end
  end
end
