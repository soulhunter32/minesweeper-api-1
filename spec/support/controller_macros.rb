module RSpec
  module Controllers
    module Macros
      def authenticate_user
        before(:each) do
          authenticated_user = create(:user, :name => 'RSpec User')
          allow_any_instance_of(described_class).to receive(:authenticate_user!)
            .and_return(authenticated_user)
          allow_any_instance_of(described_class).to receive(:current_user)
            .and_return(authenticated_user)
        end
      end

      def ensure_request_headers
        before { @request.env['HTTP_ACCEPT'] = "application/json" }
      end
    end
  end
end