module Mandao
  class Base < ActiveResource::Base
    # self.timeout = 5
    self.include_format_in_path = false

    class << self

      def activate
        self.site = Mandao.config.api_endpoint
        self.format = Mandao.config.format
      end

    end

  end
end