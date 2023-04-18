class CreatePochers < ActiveRecord::Migration[7.0]
  def change
    create_table :pochers do |t|
      t.string :title
      t.references :poch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
