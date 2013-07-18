require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Professionali < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://api.professionali.ru',
        :authorize_url => 'https://api.professionali.ru/oauth/authorize.html',
        :token_url => 'https://api.professionali.ru/oauth/getToken.json'
      }

      def request_phase
        super
      end

      def authorize_params
        super.tap do |params|
          %w[display client_options].each do |v|
            if request.params[v]
              params[v.to_sym] = request.params[v]
            end
          end
        end
      end

      uid { raw_info['id'] }

      info do
        {
          user_id: raw_info['id'],
          name:    raw_info['name'],
          image:   raw_info['avatar_medium']
        }
      end

      extra do
        {raw_info: raw_info}
      end

      def raw_info
        @raw_info ||= access_token.get("v6/users/get.json",
          params: { access_token: access_token.token, "ids" => ["me"],
          fields: "id,name,birthday,gender,avatar_medium,link,action" } ).parsed[0]
      end

    end
  end
end

OmniAuth.config.add_camelization 'professionali', 'Professionali'
