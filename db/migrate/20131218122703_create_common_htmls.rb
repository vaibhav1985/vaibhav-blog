class CreateCommonHtmls < ActiveRecord::Migration
  def change
    create_table :common_htmls do |t|

      t.timestamps
    end
  end
end
