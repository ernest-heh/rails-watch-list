class ChangeCommentNull2 < ActiveRecord::Migration[7.0]
  def change
    change_column_null :bookmarks, :comment, false
  end
end
