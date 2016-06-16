CodeBlock = Struct.new(:type, :body) do
  def to_s
    "#{type}:\n#{body}"
  end
end

def extract_blocks(file)
  file.read.split(/\n/).slice_when { |line1, line2|
    comment?(line1) != comment?(line2)
  }.collect { |lines|
    type = comment?(lines[0]) ? :comment : :code
    CodeBlock.new(type, lines.join("\n"))
  }
end

def comment? line
  !!( line =~ /^\s*\/\// )
end
