require('spec_helper')
require('project')

describe(Project) do

  describe('#name') do
    it ("returns the name of the project") do
      project = Project.new({:name => "Charity"})
      expect(project.name()).to eq("Charity")
    end
  end

end
