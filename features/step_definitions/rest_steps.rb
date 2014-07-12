When(/^the client requests POST (.+) to \/users$/) do |email|
  post '/users', {email: email}.to_json ,'CONTENT_TYPE' => 'application/json'
end

Then(/^the response should be JSON:$/) do |string|
  # expect(response).to eq 201
  response_json = JSON last_response.body
  expected_json = JSON string
  expect(response_json).to eq expected_json
end