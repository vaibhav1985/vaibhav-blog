class JavaStruts < ActiveRecord::Base
	has_one :topic, :as => :language  
    accepts_nested_attributes_for :topic
end
