Then("I should not see {string} on the list Clients") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on list of Clients") do
	visit clients_path
end
