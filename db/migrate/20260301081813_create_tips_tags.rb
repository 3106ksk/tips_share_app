class CreateTipsTags < ActiveRecord::Migration[7.2]
  def change
    create_table :tips_tags do |t|
      t.timestamps
    end
  end
end
