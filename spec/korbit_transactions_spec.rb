require_relative "../lib/coin/market"

describe Coin::Market do
  before :each do
    @korbit = Coin::Market::Korbit.new
  end

  def validate_response(responses)
    responses.each do |response|
      expect(response).to include("timestamp", "tid", "price", "amount")
    end
  end
  
  it "get transactions btc_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    responses = @korbit.get_transactions_btc_krw
    validate_response(responses)
  end

  it "get transactions eth_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    responses = @korbit.get_transactions_eth_krw
    validate_response(responses)
  end

  it "get transactions etc_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    responses = @korbit.get_transactions_etc_krw
    validate_response(responses)
  end

  it "get transactions bch_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    responses = @korbit.get_transactions_bch_krw
    validate_response(responses)
  end

  it "get transactions xrp_krw" do
    expect(@korbit).to be_instance_of Coin::Market::Korbit
    responses = @korbit.get_transactions_xrp_krw
    validate_response(responses)
  end

end