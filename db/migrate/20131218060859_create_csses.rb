class CreateCsses < ActiveRecord::Migration
  def up
    create_table :csses do |t|

      t.timestamps
    end
  end
  def down
  	drop_table :csses
  end
     	
end
