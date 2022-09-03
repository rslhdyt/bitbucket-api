require 'spec_helper'

describe BitbucketApi do
  describe '#new' do
    it 'return alias of BitbucketApi::Client' do
      expect(described_class.new).to be_an described_class::Client
    end
  end

  describe 'config' do
    context 'when set config using block' do
      it 'return correct value' do
        described_class.configure do |config|
          config.username = 'banana'
          config.app_password = 'secret'
        end

        expect(described_class.config.username).to eq 'banana'
        expect(described_class.config.app_password).to eq 'secret'
      end
    end

    # context 'when set config using options' do
    #   it 'return correct value' do
    #     client = described_class.new({ username: 'bananas', app_password: 'secret' })

    #     expect(described_class.username).to eq 'bananas'
    #     expect(described_class.app_password).to eq 'secret'
    #   end
    # end
  end
end