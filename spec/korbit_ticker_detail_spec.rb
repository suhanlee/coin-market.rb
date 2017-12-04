require_relative "../lib/coin/market"

describe Coin::Market do
  before :each do
    @korbit = Coin::Market::Korbit.new
  end

  it "get ticker detailed btc_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_ticker_detailed_btc_krw
    expect(response).to include("timestamp", "last", "bid", "ask", "low", "high", "volume")
  end

  it "get ticker detailed eth_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_ticker_detailed_eth_krw
    expect(response).to include("timestamp", "last", "bid", "ask", "low", "high", "volume")
  end

  it "get ticker detailed etc_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_ticker_detailed_etc_krw
    expect(response).to include("timestamp", "last", "bid", "ask", "low", "high", "volume")
  end

  it "get ticker detailed bch_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_ticker_detailed_bch_krw
    expect(response).to include("timestamp", "last", "bid", "ask", "low", "high", "volume")
  end

  it "get ticker detailed xrp_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_ticker_detailed_xrp_krw
    expect(response).to include("timestamp", "last", "bid", "ask", "low", "high", "volume")
  end


  
end