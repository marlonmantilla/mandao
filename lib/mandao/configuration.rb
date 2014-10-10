
module Mandao

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
    Mandao::Base.activate
  end

  def self.config
    self.configuration
  end

  class Configuration
    attr_accessor :endpoint
    attr_accessor :username
    attr_accessor :password
    attr_accessor :protocol
    attr_accessor :format

    VALID_OPTIONS_KEYS = [:endpoint, :username, :password]
    REQUIRED_OPTIONS   = [:username, :password]
    DEFAULT_PROTOCOL   = "https".freeze
    DEFAULT_ENDPOINT   = 'stage.rest.click2mail.com/v1'.freeze # TODO [ add production endpoint by default ]
    DEFAULT_FORMAT     = ActiveResource::Formats::XmlFormat

    def initialize
      @endpoint = DEFAULT_ENDPOINT
      @protocol = DEFAULT_PROTOCOL
      @format   = DEFAULT_FORMAT
    end

    def api_endpoint
      "#{@protocol}://#{@username}:#{@password}@#{@endpoint}/"
    end

    def valid?
      REQUIRED_OPTIONS.each do |opt|
        raise StandardError, 'You must provide username and password.' if send(opt)
      end
    end

  end

end