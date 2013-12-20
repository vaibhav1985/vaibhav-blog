class CreateXpaths < ActiveRecord::Migration
  def change
    create_table :xpaths do |t|

      t.timestamps
    end
  end
end
