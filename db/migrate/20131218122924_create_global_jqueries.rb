class CreateGlobalJqueries < ActiveRecord::Migration
  def change
    create_table :global_jqueries do |t|

      t.timestamps
    end
  end
end
