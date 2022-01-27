require_relative '../lib/darkTrader.rb'

describe "getting the name of at least one crypto" do
    it "should not to be nill" do
        expect(cryptoName).not_to be_nil
    end
end