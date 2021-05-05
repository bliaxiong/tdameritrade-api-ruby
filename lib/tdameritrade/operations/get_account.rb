require 'tdameritrade/operations/base_operation'

module TDAmeritrade; module Operations
  class GetAccount < BaseOperation

    def call(account_id)
      url = [
        "https://api.tdameritrade.com/v1/accounts/",
        account_id,
        "?fields=positions,orders"
      ].join

      response = perform_api_get_request(url: url)
      parse_api_response(response)
    end

  end
end; end
