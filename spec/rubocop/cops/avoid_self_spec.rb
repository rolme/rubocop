# encoding: utf-8

require 'spec_helper'

module Rubocop
  module Cop
    describe AvoidSelf do
      let(:as) { AvoidSelf.new }

      it 'registers an offence for compare' do
        inspect_source(as,
                       'file.rb',
                       ['self.a > b'])
        expect(as.offences.size).to eq(1)
        expect(as.offences.map(&:message))
          .to eq([AvoidSelf::ERROR_MESSAGE])
      end
    end
  end
end
