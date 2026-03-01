class CreateTips < ActiveRecord::Migration[7.2]
  def change
    create_table :tips do |t|
      t.string :title, null: false
      t.text :problem, null: false
      t.text :hypothesis, null: false
      t.string :action, null: false
      t.string :learning, null: false
      t.references :reference

      t.timestamps
    end
  end
end
