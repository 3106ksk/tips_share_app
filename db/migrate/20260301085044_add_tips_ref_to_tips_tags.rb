class AddTipsRefToTipsTags < ActiveRecord::Migration[7.2]
  def change
    add_reference :tips_tags, :tip, null: false, foreign_key: true
  end
end
