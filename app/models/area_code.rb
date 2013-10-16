class AreaCode < ActiveRecord::Base
acts_as_gmappable
has_many :pathologists


def pathologists_by_million_people
	(pathologists.count * 1000000 / population) if (population > 0)
end


end
