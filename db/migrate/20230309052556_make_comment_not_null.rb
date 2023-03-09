class MakeCommentNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :bookmarks, :comment, :string, false
  end
end
