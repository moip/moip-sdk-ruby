describe Moip2::Api do

  let(:auth) { Moip2::Auth::Basic.new('', '') }
  let(:client) { Moip2::Client.new(:sandbox, auth) }
  let(:api) { described_class.new client }

  describe "#order" do
    it "returns an OrderApi" do
      expect(api.order).to be_a(Moip2::OrderApi)
    end
  end

  describe  "#payment" do
    it "returns a PaymentApi" do
      expect(api.payment).to be_a(Moip2::PaymentApi)
    end
  end

  describe "#invoice" do
    it { expect(api.invoice).to be_a Moip2::InvoiceApi }
  end

  describe "#refund" do
    it { expect(api.refund).to be_a Moip2::RefundApi }
  end

  describe "#keys" do
    it { expect(api.keys).to be_a Moip2::KeysApi }
  end

end
