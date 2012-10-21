When /^the system receives a POST hook$/ do
  post '/submissions', provider_params
end

Then /^a new submission should be created$/ do
  Submission.count.should be > 0
end

When /^I submit a property in Mount Healthy$/ do
  params = params_for_locality({
    address:  "7607 Hamilton Avenue",
    city:     "Cincinati",
    zip_code: "45231"
  })

  post '/submissions', params
  visit "/thank_you/#{params["EntryId"]}"
end

Then /^I should see a contact for my locality$/ do
  page.should have_content @contact_phone_number
end

Given /^there is a Mount Healthy locality$/ do
  @locality = FactoryGirl.create(:locality, name: "Mt Healthy")
end

Given /^there is a resource for this locality$/ do
  @contact_phone_number = "(513) 931-8840"
  FactoryGirl.create(
     :resource,
     phone: @contact_phone_number,
     locality: @locality)
end

Given /^I have submitted a property$/ do
  # nothing to see here
end

Given /^the provider has not yet POSTed the information$/ do
  # nothing to see here
end

When /^I view the results for the submission$/ do
  visit "/thank_you/#{pretty_params['EntryId']}"
end

Then /^I should see a waiting for result page and the provider POSTs the info$/ do
  page.current_path.should match('waiting')
  page.should have_content('Waiting for information')

  params = params_for_locality({
    address:  "7607 Hamilton Avenue",
    city:     "Cincinati",
    zip_code: "45231"
  })

  post '/submissions', params

  #page.current_path.should match('thank_you')
  #page.should have_content @contact_phone_number
end

Given /^there is are two resources for trash removal$/ do
  @resource_one_phone = "111-111-1111"
  @resource_two_phone = "222-222-2222"

  complaint = FactoryGirl.create(:complaint, name: 'trash')
  FactoryGirl.create(:resource, phone: @resource_one_phone, complaints: [complaint])
  FactoryGirl.create(:resource, phone: @resource_two_phone, complaints: [complaint])
end

When /^I submit a property with a trash complaint$/ do
  step "the system receives a POST hook"
  visit "/thank_you/#{provider_params["EntryId"]}"
end

Then /^I should see the two resources for trash removal$/ do
  page.should have_content @resource_one_phone
  page.should have_content @resource_two_phone
end

Given /^there is one resource for high grass$/ do
  @grass_resource_phone = "333-333-3333"

  complaint = FactoryGirl.create(:complaint, name: 'grass')
  FactoryGirl.create(:resource, phone: @grass_resource_phone, complaints: [complaint])
end

Then /^I should not see the resouce for high grass$/ do
  page.should_not have_content(@grass_resource_phone)
end

Then /^the contact info is displayed$/ do
  # lame. put it all in the above step.
end

