require "../spec_helper.cr"
require "../spec_helpers/list_helper.cr"

describe Mollie::List do
  describe ".from_json" do
    it "converts an embedded list of items to an array" do
      list = Mollie::MastabaList.from_json(mastaba_list_json)
      list.items.should be_a(Array(Mollie::Mastaba))
      list.items.size.should eq(2)
      list.items.first.id.should eq("tr_1")
      list.items.last.id.should eq("tr_2")
    end
  end
end

struct Mollie
  struct Mastaba < Base
    getter id : String?
  end

  struct MastabaList < List(Mollie::Mastaba)
  end
end