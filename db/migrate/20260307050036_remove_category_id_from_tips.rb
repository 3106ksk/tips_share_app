class RemoveCategoryIdFromTips < ActiveRecord::Migration[7.2]
  def change
    remove_column :tips, :category_id, :bigint
  end
end
