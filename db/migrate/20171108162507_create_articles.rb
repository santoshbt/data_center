class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.text :title
      t.blob :content

      t.timestamps
    end
  end
end
