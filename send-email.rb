require 'sendgrid-ruby'
include SendGrid
require 'json'

from = SendGrid::Email.new(email: 'Andy-rama@hotmail.fr')
to = SendGrid::Email.new(email: 'sender@gmail.com')
subject = ' sending with twilio SendGrid is fun '
content = SendGrid::Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby !')
mail = SendGrid::Mail.new(from, subject, to, content)

puts mail.to_json

sg = SendGrid::API.new(api_key: 'SENDGRID_API_KEY')
response = sg.client.mail._('send').post(request_body: mail.to_json)

puts response.status_code
puts response.body
puts response.headers
