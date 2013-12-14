require 'spec_helper'

 describe Event  do

	before { @event = Event.new(name: "Steering Meeting", datetime: DateTime.new(2013,2,3,4,5,6), location: "Alex's House", contact: "Juan Lopez juan@hu.org")}

	subject ( @event )

	it { should respond_to(:name)}
	# it { should respond_to(:datetime)}
	# it { should respond_to(:contact)}
	# it { should respond_to(:location)}

 end

