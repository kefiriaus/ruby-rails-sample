#
# Write your own API or better create gem for your external API
#
module ExternalCrm
  class Api
    attr_accessor :errors

    def initialize
      self.errors = []
    end

    def login(params)
      123
    end
    def registration(params)
      123
    end
    def restore_password(params)
      'ALSOK'
    end
  end
end