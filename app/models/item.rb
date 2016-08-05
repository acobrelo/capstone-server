class Item < ActiveRecord::Base
  belongs_to :notebook, foreign_key: :notebook_id
end
