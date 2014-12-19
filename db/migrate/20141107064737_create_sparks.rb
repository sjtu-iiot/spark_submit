class CreateSparks < ActiveRecord::Migration
  def change
    create_table :sparks do |t|
      t.string :classname
      t.string :master
      t.integer :memory
      t.integer :cores
      t.text :parameters
      t.text :cmd
      t.text :cmdresult

      t.timestamps
    end
  end
end
