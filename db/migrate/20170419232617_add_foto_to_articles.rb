class AddFotoToArticles < ActiveRecord::Migration[5.0]
  def up
    add_attachment :articles, :foto
  end

  def down
    remove_attachment :articles, :foto
  end
end
