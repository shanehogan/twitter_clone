When(/^the client send a POST to "(\/[^"]*)" with an email address of "([^"]*)"$/) do |route, email|
  post route, {email: email}.to_json ,'CONTENT_TYPE' => 'application/json'
end

Then(/^the response should be JSON:$/) do |string|
  # expect(response).to eq 201
  response_json = JSON last_response.body
  expected_json = JSON string

  expect(response_json.has_key? 'id').to be true

  expected_json.each_key do |key|
    expect(response_json.has_key? key).to be true
    if(key != 'id')
      expect(response_json[key]).to eq expected_json[key]
    end
  end

end