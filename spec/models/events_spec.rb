require 'spec_helper'

 describe Events  do
	before { @event = Events.new(name: "Steering Meeting", datetime: DateTime.new(2013,2,3,4,5,6), location: "Alex's House")}

	subject ( @event )

 end




end
