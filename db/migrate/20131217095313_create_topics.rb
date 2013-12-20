class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.text :description
      t.references :language, :polymorphic => true 
      t.timestamps
    end
  end
end
