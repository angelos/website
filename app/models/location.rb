class Location < ActiveRecord::Base

  belongs_to :event

  validates_presence_of :name,
                        :address,
                        :city

end
