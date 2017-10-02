require('spec_helper')
require('project')

describe(Project) do
  project = Project.new({:name => "Charity"})

  describe('#id') do
    it "returns the project id" do
      expect(project.id()).to eq(project.id())
    end
  end

  describe('#name') do
    it ("returns the name of the project") do
      expect(project.name()).to eq("charity")
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

  describe('#delete_project') do
    it ("deletes a project") do
      project = Project.new({:name => "Meals on Wheels"})
      project.save()
      project.delete_project()
      expect(Project.all()).to eq([])
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
