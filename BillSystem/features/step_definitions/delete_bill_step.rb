Given("There is client named {string}") do |string|
  @c = FactoryBot.create(:client, name: string)
end

Then("I should not see {string}") do |string|
  expect(page).not_to have_content(string)
end


When("I on {string} Bills Page") do |string|
  client = Client.find_by name: string
  visit client_bills_path(client)

end

When("I see note {string}") do |string|
  expect(page).to have_content(string)
end

Given("there is bill {string}") do |string|
  @bill = FactoryBot.create(:bill, note:string)

  fill_in 'bill_note', with: "KPI"
  fill_in 'bill_Data', with: Date.new(2001,2,3) 
  fill_in 'bill_totalHour', with:20
  fill_in 'bill_totalEuro', with:30

  click_on 'Create Bill'

end

Given("I on {string} Bill details") do |string|
  visit client_bills_path(@c,@bill)
end

Given("I see {string} in the page") do |string|
  expect(page).to have_content(string)
end