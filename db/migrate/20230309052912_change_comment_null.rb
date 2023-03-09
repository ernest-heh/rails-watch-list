class ChangeCommentNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :bookmarks, :comment, null: false
  end
end
