require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('defining a word and routing it', {:type => :feature}) do
  it('processes form entry for word and returns content') do
    Word.clear()
    visit('/')
    fill_in('new_word', :with => 'kiwi')
    click_button('Add Word')
    expect(page).to have_content('kiwi')
  end
end
describe('defining a word and routing it', {:type => :feature}) do
  it('processes form entry for word and definition and returns content with route') do
    Word.clear()
    visit('/')
    fill_in('new_word', :with => 'banana')
    fill_in('definition', :with => 'a fruit')
    click_button('Add Word')
    click_link('banana')
    fill_in('definition', :with => 'yellow')
    click_button('Add')
    expect(page).to have_content('yellow')
  end
end
