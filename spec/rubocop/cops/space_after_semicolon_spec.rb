# encoding: utf-8

require 'spec_helper'

module Rubocop
  module Cop
    describe SpaceAfterSemicolon do
      let(:space) { SpaceAfterSemicolon.new }

      it 'registers an offence for semicolon without space after it' do
        inspect_source(space, 'file.rb', ['x = 1;y = 2'])
        expect(space.offences.map(&:message)).to eq(
          ['Space missing after semicolon.'])
      end
    end
  end
end
