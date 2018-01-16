When("I fill in the bill note {string}") do |string|
  fill_in 'bill_note', with: string
  fill_in 'bill_Data', with: Date.new(2001,2,3) 
  fill_in 'bill_totalHour', with:12
  fill_in 'bill_totalEuro', with:30

  click_on 'Create Bill'
end

Then("I should see the bill client {string} in the list") do |string|
  expect(page).to have_content(string)
end

When("I fill in the invalid bill note") do
  fill_in 'bill_note', with: "Mario"
  fill_in 'bill_Data', with: Date.new(2001,2,3) 
  fill_in 'bill_totalHour', with: " "
  fill_in 'bill_totalEuro', with:30

  click_on 'Create Bill'
end

Then("I should see an invadlidation") do
  expect(page).to have_content("Add fattures to client")
end

