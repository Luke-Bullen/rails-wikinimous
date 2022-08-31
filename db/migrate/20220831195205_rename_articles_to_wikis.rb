class RenameArticlesToWikis < ActiveRecord::Migration[7.0]
  def change
    rename_table :articles, :wikis
  end
end
