require 'plane'

describe Plane do	
	#helper function
	def land_takeoff(plane)
		plane.land!
		plane.takeoff!
	end
 
  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
  	expect(plane).to be_flying
  end
  
  it 'has a flying status when in the air' do
  	plane.takeoff!
  	expect(plane.flying?).to eq true
  	expect(plane).to be_flying
  end
  
  it 'can take off' do
  	land_takeoff(plane)
  	expect(plane).to be_flying
  end
  
  it 'can land' do
  	plane.land!
  	expect(plane).not_to be_flying
  end

  it 'changes its status to flying after taking off' do
  	land_takeoff(plane)
  	expect(plane).to be_flying
  end

end







