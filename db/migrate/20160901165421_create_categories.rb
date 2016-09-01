class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.string :level
      t.string :video

      t.timestamps null: false
    end
  end
end
