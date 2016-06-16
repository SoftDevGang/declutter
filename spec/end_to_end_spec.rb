require 'approvals/rspec'
require 'rspec'

require './src/app'

describe "end to end changes" do
  before do
    @add_suffix = lambda { |file| "#{file}.backup" }
    @acceptor = lambda { |code_block| true }
  end

  it "accepts all modifications to the file" do
    given_java_with_comments
    when_the_user_accepts_all_changes
    verify do
      File.read('')
    end
  end

  def given_java_with_comments
    @code_directory = "resources/java"
  end

  def when_the_user_accepts_all_changes
    App.new(@code_directory, @add_suffix, @acceptor)
      .run
  end
end
