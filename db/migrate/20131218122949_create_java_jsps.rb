class CreateJavaJsps < ActiveRecord::Migration
  def change
    create_table :java_jsps do |t|

      t.timestamps
    end
  end
end
