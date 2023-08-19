# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'CriarVagas' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'criarVagas' do
    @driver.get('http://localhost:3000/positions/new')
    @driver.manage.resize_to(1050, 832)
    @driver.find_element(:id, 'position_name').click
    @driver.find_element(:id, 'position_name').send_keys('Desenvolvedor web')
    @driver.find_element(:id, 'position_career').click
    @driver.find_element(:id, 'position_contract').click
    @driver.find_element(:id, 'position_remote').click
    @driver.find_element(:id, 'position_publish').click
    @driver.find_element(:id, 'position_city').click
    @driver.find_element(:id, 'position_city').send_keys('Palmas')
    @driver.find_element(:id, 'position_state').click
    @driver.find_element(:id, 'position_state').click
    dropdown = @driver.find_element(:id, 'position_state')
    dropdown.find_element(:xpath, "//option[. = 'Tocantins']").click
    @driver.find_element(:id, 'position_summary').click
    @driver.find_element(:id, 'position_summary').send_keys('Auxiliar')
    @driver.find_element(:name, 'commit').click
  end
end