require "../spec_helper.cr"

describe Mollie::Chargeback do
  describe "#links" do
    it "contain links" do
      chargeback = Mollie::Chargeback.from_json(read_fixture("chargebacks/get.json"))
      chargeback.links.should be_a(Links)
    end
  end

  describe ".from_json" do
    it "pulls the required attributes" do
      chargeback = Mollie::Chargeback.from_json(read_fixture("chargebacks/get.json"))
      chargeback.id.should eq("chb_n9z0tp")
      chargeback.amount.should be_a(Mollie::Amount)
      chargeback.settlement_amount.should be_a(Mollie::Amount)
      chargeback.created_at.should eq(Time.parse_iso8601("2018-03-14T17:00:52.0Z"))
      chargeback.reversed_at.should be_a(Time?)
      chargeback.payment_id.should eq("tr_WDqYK6vllg")
    end
  end

  describe "#reversed?" do
    it "tests nevative if it is not yet reversed" do
      chargeback = Mollie::Chargeback.from_json(read_fixture("chargebacks/get.json"))
      chargeback.reversed?.should be_false
    end

    it "tests positive if it is reversed" do
      chargeback = Mollie::Chargeback.from_json(read_fixture("chargebacks/get-reversed.json"))
      chargeback.reversed?.should be_true
    end
  end

  describe "#payment" do
    it "returns the related payment" do
      configure_test_api_key
      WebMock.stub(:get, "https://api.mollie.com/v2/payments/tr_WDqYK6vllg")
        .to_return(status: 200, body: read_fixture("payments/get.json"))

      chargeback = Mollie::Chargeback.from_json(read_fixture("chargebacks/get-reversed.json"))
      chargeback.payment.id.should eq("tr_WDqYK6vllg")
    end
  end

  describe "#settlement" do
    it "returns the related settlement" do
      configure_test_api_key
      WebMock.stub(:get, "https://api.mollie.com/v2/settlements/stl_jDk30akdN")
        .to_return(status: 200, body: read_fixture("settlements/get.json"))

      chargeback = Mollie::Chargeback.from_json(read_fixture("chargebacks/get-reversed.json"))
      settlement = chargeback.settlement.as(Mollie::Settlement)
      settlement.id.should eq("stl_jDk30akdN")
    end

    it "is nilable" do
      chargeback = Mollie::Chargeback.from_json(read_fixture("chargebacks/get.json"))
      chargeback.settlement.should be_nil
    end
  end
end
