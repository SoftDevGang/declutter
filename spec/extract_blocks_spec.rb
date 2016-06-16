require 'approvals/rspec'
require 'rspec'

require './src/extract_blocks'

class CodeBlock
  # hack to have nice output in Approvals
  def inspect
    body
  end
end

describe "block extraction" do
  it "extracts blocks from java" do
    verify do
      File.open("resources/java/PairComparer.java") do | open_file |
        extract_blocks(open_file)
      end
    end
  end
end