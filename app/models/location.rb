class Location < ApplicationRecord
 validates_presence_of :location
 belongs_to :restaurant, :optional => true #單數
end
