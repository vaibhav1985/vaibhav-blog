class CreateGemrubies < ActiveRecord::Migration
  def change
    create_table :gemrubies do |t|

      t.timestamps
    end
  end
end
