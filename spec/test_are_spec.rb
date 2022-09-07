# frozen_string_literal: true

RSpec.describe TestAre do
  it "has a version number" do
    expect(TestAre::VERSION).not_to be nil
  end

  describe ".my_diff" do
    it "elim the element" do
      expect(TestAre.my_diff({ a: 1, b: 2, c: 3 }, elem: { c: 3 })).to eql({ a: 1, b: 2 })
    end
  end
end
