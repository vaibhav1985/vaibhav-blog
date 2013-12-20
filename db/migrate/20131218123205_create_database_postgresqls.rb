class CreateDatabasePostgresqls < ActiveRecord::Migration
  def change
    create_table :database_postgresqls do |t|

      t.timestamps
    end
  end
end
