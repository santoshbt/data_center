class AddProgrammingLanguageToArticles < ActiveRecord::Migration[5.0]
  def change
  	add_column :articles, :programming_language, :string
  end
end
