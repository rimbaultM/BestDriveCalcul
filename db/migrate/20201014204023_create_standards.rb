class CreateStandards < ActiveRecord::Migration[6.0]
  def change
    create_table :standards do |t|
      t.integer :jantelargeur
      t.integer :janteexterieur
      t.integer :jantesepaisseur
      t.integer :voilecreux
      t.integer :voileepaisseur
      t.integer :fam

      t.timestamps
    end
  end
end
