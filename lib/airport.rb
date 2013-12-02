require 'plane'

class Airport
	
DEFAULT_CAPACITY = 10

  def initialize
    @planes = []
	end
  def planes
    @planes ||= []
  end
  def capacity    
    @capacity ||= DEFAULT_CAPACITY
  end
  def full?
    planes_count == capacity 
  end

  def planes_count
    planes.count
  end

  def park(plane)
  raise "No Space for Planes.. go away" if full?
  plane.on_ground
  @planes << plane
  end

  def release(plane)
  plane.takeoff
  @planes.delete(plane)
  end

end
