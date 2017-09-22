require('spec_helper')
require('project')

describe(Project) do

  describe('#name') do
    it ("returns the name of the project") do
      project = Project.new({:name => "Charity"})
      expect(project.name()).to eq("Charity")
    end
  end


  describe('#save') do
    it ("saves a project to the DB") do
      project.save()
      name = Project.find(project.id()).name()
      expect(name).to eq("charity")
    end
  end

  describe('#==') do
    it("returns true if projects have the same name and id") do
      project.save()
      project2 = Project.find(project.id())
      expect(project).to eq(project2)
    end
  end

  describe('.all') do
    it "returns all projects" do
      project.save()
      expect(Project.all()).to eq([project])
    end
  end

  describe('.find') do
    it ("finds a project from the DB") do
      project.save()
      found = Project.find(project.id())
      expect(found).to eq(project)
    end
  end

end
