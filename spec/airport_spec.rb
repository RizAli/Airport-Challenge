require 'airport'
require 'plane'
require 'Weather'


describe Airport do
  let(:airport) { Airport.new }
  let(:plane)   {Plane.new}


  context 'taking off and landing' do
  before(:each) { allow(airport).to receive(:stormy).and_return(false) }
    it 'allows plane to land' do
      airport.receive(plane)
      expect(airport.plane_count).to eq(1)
    end
    
    it 'a plane can take off' do
      airport.release(plane)
      expect(airport.plane_count).to eq(0)
    end

    it 'knows when it is full' do
      10.times {(airport.receive(plane))}
      expect(airport.full?).to eq true
    end

    it 'does not receive planes if it is full' do
      10.times {(airport.receive(plane))}
      expect{ airport.receive(plane) }.to raise_error(RuntimeError, 'Airport is full')
    end

  end
  
    # Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport
    context 'weather conditions' do
    before(:each) { allow(airport).to receive(:stormy).and_return(true) }
  
      it 'a plane cannot take off when there is a storm brewing' do
        expect{ airport.release(plane) }.to raise_error(RuntimeError, 'There is a storm brewing')
        # expect{ airport.receive(plane) }.to raise_error(RuntimeError, 'Airport is full')

        # make weather stormy
        # raise error if plane wants to land  
      end
      
      it 'a plane cannot land in the middle of a storm' do
        expect{ airport.receive(plane) }.to raise_error(RuntimeError, 'Cannot receive plane due to Storm')


      end
    end
  
end
