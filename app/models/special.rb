class Special < ActiveRecord::Base
  belongs_to :bar
  has_many :dows
end
