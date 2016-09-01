class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :respuesta
      t.boolean :correcta
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
