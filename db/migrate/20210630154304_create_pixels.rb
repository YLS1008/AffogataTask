class CreatePixels < ActiveRecord::Migration[6.1]
  def change
    create_table :pixels do |t|
      t.integer :r
      t.integer :g
      t.integer :b
      t.integer :parent
      t.integer :breed_count

      t.timestamps
    end
  end
end
