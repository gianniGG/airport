require 'plane'

# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
# When the plane takes of from the airport, the plane's status should become "flying"

describe Plane do
 
  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
  	# we want the plane to have a flying status
  	expect(plane.flying?).to be_true
  end
  
  it 'has a flying status when in the air' do
  	# now, i want the flying status to indicate that it is in the air?
  	plane.in_the_air
  	expect(plane.flying?).to be_true
  end
  
  it 'can take off' do
  	# can the plane take off be true?
  	expect(plane.takeoff).to be_true
  end
  
  it 'changes its status to flying after taking of' do
  	# change status to "FLYING" once takeoff
  	plane.takeoff
  	expect(plane.status).to eq("flying")
  end
end