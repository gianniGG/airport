class Plane

	def initialize
		@flying = true
	end

	def flying?
		@flying
	end

	def in_the_air
		@flying = true
	end
	def on_ground
	@flying = false
	status
	end

	def takeoff
		@flying = true
	end

	def status
	return "flying" if @flying
	return "on ground"
	end
end
