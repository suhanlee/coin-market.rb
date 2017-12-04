require_relative "../lib/coin/market"

describe Coin::Market do

  before :each do
    @korbit = Coin::Market::Korbit.new
  end

  it "get_ticker btc_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    expect(@korbit.get_ticker_btc_krw).to include("timestamp", "last")
  end

  it "get_ticker eth_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    expect(@korbit.get_ticker_eth_krw).to include("timestamp", "last")
  end
  
  it "get_ticker etc_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    expect(@korbit.get_ticker_eth_krw).to include("timestamp", "last")
  end

  it "get_ticker bch_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    expect(@korbit.get_ticker_bch_krw()).to include("timestamp", "last")
  end

  it "get_ticker xrp_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    expect(@korbit.get_ticker_xrp_krw()).to include("timestamp", "last")
  end
  
  it "get_ticker_other" do
    expect {
      @korbit.get_ticker("other")
    }.to raise_error
  end
end