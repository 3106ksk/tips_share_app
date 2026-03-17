class RemoveReferenceIdFromTips < ActiveRecord::Migration[7.2]
  def change
    remove_reference :tips, :reference, index: true
  end
end
