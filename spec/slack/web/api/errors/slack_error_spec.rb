# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Slack::Web::Api::Errors::SlackError do
  let(:client) { Slack::Web::Client.new }

  it 'provides access to the response object', vcr: { cassette_name: 'web/auth_test_error' } do
    client.auth_test
    raise 'Expected to receive Slack::Web::Api::Errors::SlackError.'
  rescue described_class => e
    expect(e.response).not_to be_nil
    expect(e.response.status).to eq 200
    expect(e.message).to eql 'not_authed'
    expect(e.error).to eql 'not_authed'
    expect(e.response_metadata).to be_nil
  end

  it 'provides access to any response_metadata', vcr: { cassette_name: 'web/views_open_error' } do
    client.views_open(trigger_id: 'trigger_id', view: {})
    raise 'Expected to receive Slack::Web::Api::Errors::SlackError.'
  rescue described_class => e
    expect(e.response).not_to be_nil
    expect(e.response.status).to eq 200
    expect(e.message).to eql "invalid_arguments, response_metadata=#{e.response_metadata}"
    expect(e.error).to eql 'invalid_arguments'
    expect(e.response_metadata).to eq(
      'messages' => [
        '[ERROR] failed to match all allowed schemas [json-pointer:/view]',
        '[ERROR] missing required field: type [json-pointer:/view]'
      ]
    )
  end
end
