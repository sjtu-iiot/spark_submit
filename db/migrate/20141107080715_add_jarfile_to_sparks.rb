class AddJarfileToSparks < ActiveRecord::Migration
  def change
    add_column :sparks, :jarfile, :string
  end
end
