class Dow < ActiveRecord::Base
  belongs_to :special, :foreign_key => "specialid"
end
