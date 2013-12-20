class CreateRailsHamls < ActiveRecord::Migration
  def change
    create_table :rails_hamls do |t|

      t.timestamps
    end
  end
end
