class CreateMovements < ActiveRecord::Migration[6.0]
  def change
    create_table :movements do |t|
      t.string :descripcion
      t.decimal :cantidad
      t.references :account, null: false, foreign_key: true
      t.references :concept, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :goal, null: true, foreign_key: true

      t.timestamps
    end
  end
end
