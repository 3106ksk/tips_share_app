class ChangecategoryTagTypeIdOfTips < ActiveRecord::Migration[7.2]
  def change
    change_column_null :tips, :category_id, true
  end
end
