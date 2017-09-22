require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('projects', {:type => :feature}) do
  it "goes to the projects when clicked" do
    visit('/')
    click_link("Go to projects page")
    expect(page).to have_content('Add a project')
  end
  it "goes to the volunteers when clicked" do
    visit('/')
    click_link("Go to volunteers page")
    expect(page).to have_content('Add a volunteer')
  end

end
