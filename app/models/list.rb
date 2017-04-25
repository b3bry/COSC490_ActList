class List < ActiveRecord::Base
  has_many :items, -> { order(position: :asc) }
end
