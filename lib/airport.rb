require_relative 'plane'

class Airport
	
	
	def initialize
		@plane = []
		@capacity = 10
	end


	def receive(plane)
		raise "Airport is full" if full?
		raise "Cannot receive plane due to Storm" if stormy

		@plane << plane

	end

	def release(plane)
		raise "There is a storm brewing" if stormy
		@plane.delete(plane)
	end

	def plane_count
		@plane.count
	end

	def full?
		plane_count == @capacity
	end



end
