class CodeBlock < Struct.new(:body)



end

def extract_blocks(file)
  file.read.split(/\n/).slice_when { |line1, line2|
    comment?(line1) != comment?(line2)
  }.collect { |lines| CodeBlock.new(lines.join("\n")) }
end

def comment? line
  if line =~ /^\s*\/\//
    true
  else
    false
  end
end
