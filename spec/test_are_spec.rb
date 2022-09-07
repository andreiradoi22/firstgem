# frozen_string_literal: true

RSpec.describe TestAre do
  it "has a version number" do
    expect(TestAre::VERSION).not_to be nil
  end

  describe ".convert" do
    it "conv to kilometers" do
      expect(TestAre.convert(3.1, from: :mi, to: :km).round(1)).to eql(5.0)
    end

    it "conv kilometers to miles" do
      expect(TestAre.convert(5, from: :km, to: :mi).round(1)).to eql(3.1)
    end
  end
end
