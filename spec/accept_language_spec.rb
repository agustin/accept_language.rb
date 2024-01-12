# frozen_string_literal: true

require_relative "spec_helper"

RSpec.describe AcceptLanguage do
  context "with a field value" do
    let(:field) { "da, en-GB;q=0.8, en;q=0.7" }

    describe ".parse" do
      it "returns an instance of parser" do
        expect(described_class.parse(field)).to be_an_instance_of AcceptLanguage::Parser
      end
    end
  end

  context "without a field value" do
    let(:field) { nil }

    describe ".parse" do
      it "returns an instance of parser" do
        expect(described_class.parse(field)).to be_an_instance_of AcceptLanguage::Parser
      end
    end
  end
end
