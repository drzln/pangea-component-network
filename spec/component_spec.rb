# frozen_string_literal: true

require_relative %(../lib/pangea-component-network)

# RSpec.configure do |config|
#   config.before(:suite) do
#     nil
#   end
#
#   config.after(:suite) do
#     nil
#   end
# end

describe 'component' do
  it 'should render' do
    expect(render({})).to be_kind_of(Hash)
  end
end
