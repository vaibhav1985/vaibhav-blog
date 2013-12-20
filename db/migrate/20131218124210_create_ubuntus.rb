class CreateUbuntus < ActiveRecord::Migration
  def change
    create_table :ubuntus do |t|

      t.timestamps
    end
  end
end
