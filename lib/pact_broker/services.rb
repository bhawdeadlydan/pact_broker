require 'pact_broker/services/tag_service'
require 'pact_broker/services/group_service'
require 'pact_broker/services/version_service'

module PactBroker
  module Services

    def pact_service
      # TODO work out how to fix circular dependency
      require 'pact_broker/pacts/service'
      Pacts::Service
    end

    def pacticipant_service
      require 'pact_broker/pacticipants/service'
      Pacticipants::Service
    end

    def tag_service
      TagService
    end

    def group_service
      GroupService
    end

    def webhook_service
      require 'pact_broker/webhooks/service'
      Webhooks::Service
    end

    def version_service
      VersionService
    end
  end
end
