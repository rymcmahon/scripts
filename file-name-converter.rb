require 'rspec/autorun'

class File

  def initialize(string:)
    @string = string
  end

  def convert_title_to_url
    @string.tr(" ", "-").gsub(/:/, "").gsub(/,/, "").downcase
  end

end

describe File do
  describe "#convert_title_to_url" do
    it "returns a lowercase string and converts spaces into hyphens and removes colons and commas" do
      file = File.new(string: "Implementation Training 2: Organization Tools, Tricks, and Forms")

      expect(file.convert_title_to_url).to eq("implementation-training-2-organization-tools-tricks-and-forms")
    end
  end
end