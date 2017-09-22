require('spec_helper')

describe(Volunteer) do

  describe('#name') do
    it ("returns the name of the volunteer") do
      volunteer = Volunteer.new({:first_name => "Tyler", :last_name => "Miller"})
      expect(volunteer.name()).to eq("Tyler Miller")
    end
  end

end
