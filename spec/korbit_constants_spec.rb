require_relative "../lib/coin/market"

describe Coin::Market do
  before :each do
    @korbit = Coin::Market::Korbit.new
  end

  def validate_response(response)
    expect(response).to include("krwWithdrawalFee", "maxKrwWithdrawal", "minKrwWithdrawal")
  end

  it "get constants btc_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_constants_btc_krw
    validate_response(response)
  end

  it "get constants eth_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_constants_eth_krw
    validate_response(response)
  end

  it "get constants etc_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_constants_etc_krw
    validate_response(response)
  end

  it "get constants bch_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_constants_bch_krw
    validate_response(response)
  end

  it "get constants xrp_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    response = @korbit.get_constants_xrp_krw
    validate_response(response)
  end

end