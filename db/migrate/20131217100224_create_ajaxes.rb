class CreateAjaxes < ActiveRecord::Migration
  def change
    create_table :ajaxes do |t|

      t.timestamps
    end
  end
end
