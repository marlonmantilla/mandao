require File.expand_path('../spec_helper', __FILE__)

describe Mandao do

  describe '.configure' do

    it 'should set values' do
      Mandao.configure do |config|
        Mandao::Configuration::VALID_OPTIONS_KEYS.each do |key|
          config.send("#{key}=", key)
          expect(Mandao.config.send(key)).to be_eql(key)
        end
      end
    end
 
  end

end