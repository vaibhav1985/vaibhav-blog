class CreateDatabaseMysqls < ActiveRecord::Migration
  def change
    create_table :database_mysqls do |t|

      t.timestamps
    end
  end
end
