class AddReferenceUrlToTips < ActiveRecord::Migration[7.2]
  def change
    add_column :tips, :reference_url, :string
  end
end
