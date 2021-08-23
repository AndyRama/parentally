require 'sendgrid-ruby'
include SendGrid

def hello_world
  from = SendGrid::Email.new(email: 'andyramaroson@gmail.com')
  to = SendGrid::Email.new(email: 'andyramaroson@gmail.com')
  subject = ' sending with twilio SendGrid is fun '
  content = SendGrid::Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby !')
  mail = SendGrid::Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)

  puts response.status_code
  puts response.body
  puts response.parsed_body
  puts response.headers
end