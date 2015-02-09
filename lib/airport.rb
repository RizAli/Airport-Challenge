require_relative 'plane'

class Airport
	
	
	def initialize
		@plane = []
		@capacity = 10
	end


	def receive(plane)
		raise "Airport is full" if full?

		@plane << plane

	end

	def release(plane)
		@plane.delete(plane)
	end

	def plane_count
		@plane.count
	end

	def full?
		plane_count == @capacity
	end



end
