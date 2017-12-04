require_relative "../lib/coin/market"

describe Coin::Market do
  before :each do
    @korbit = Coin::Market::Korbit.new
  end

  it "get orderbook btc_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_orderbook_btc_krw
    expect(response).to include("timestamp", "bids", "asks")
  end

  it "get orderbook eth_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_orderbook_eth_krw
    expect(response).to include("timestamp", "bids", "asks")
  end

  it "get orderbook etc_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_orderbook_etc_krw
    expect(response).to include("timestamp", "bids", "asks")
  end

  it "get orderbook bch_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_orderbook_bch_krw
    expect(response).to include("timestamp", "bids", "asks")
  end

  it "get orderbook xrp_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_orderbook_xrp_krw
    expect(response).to include("timestamp", "bids", "asks")
  end
  
end