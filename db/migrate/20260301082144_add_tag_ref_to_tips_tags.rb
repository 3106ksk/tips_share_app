class AddTagRefToTipsTags < ActiveRecord::Migration[7.2]
  def change
    add_reference :tips_tags, :tag, null: false, foreign_key: true
  end
end
