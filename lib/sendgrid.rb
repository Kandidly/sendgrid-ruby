require 'sendgrid/version'
require 'faraday'

module SendGrid
  class Client

    def initialize(api_user, api_key)
      @api_user = api_user
      @api_key = api_key
      @host = "https://api.sendgrid.com"
    end

    attr_reader :api_user, :api_key, :host



    def send()

      conn = Faraday.new(@host)

      conn.post 'mail.send.json', { 
        :name => Mail.add_to,
        :from => Mail.add_from 
      }

    end  

  end
end
