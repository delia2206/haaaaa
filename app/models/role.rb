class Role < ActiveRecord::Base
	has_many :utilisateurs
end
