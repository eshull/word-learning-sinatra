require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
#
describe('Duck word information', {:type => :feature}) do
  it('Has a link to more information about the word duck') do
    visit('/')
    click_on('duck')
    expect(page).to have_content('This is a duck')
  end
end
describe('Dog word information', {:type => :feature}) do
  it('Has a link to more information about the word dog') do
    visit('/')
    click_on('dog')
    expect(page).to have_content('This is a dog')
  end
end
describe('Dog word information', {:type => :feature}) do
  it('Has a link to more information about the word dog') do
    visit('/')
    words = Words.new("cup")
    click_on('cup')
    expect(page).to have_content('This is a cup')
  end
end
