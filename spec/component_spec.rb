# frozen_string_literal: true

require_relative %(../lib/pangea-component-network)

describe 'component' do
  it 'should render' do
    expect(render({})).to be_kind_of(Hash)
  end
end
