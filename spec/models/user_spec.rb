require 'rails_helper'

RSpec.describe User, type: :model do
 
  context "attending 1 event" do
     it "belongs to event" do
        myuser = User.create!
        myevent = Event.create!
        myuser.events.push(myevent)
        expect(myuser.events[0]).to eq(myevent)
     end
  end
end
