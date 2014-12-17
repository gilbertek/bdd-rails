require 'rails_helper'

RSpec.describe Post, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Post do

  describe "title validation" do
    context "title is present" do
      before(:each) do
        @post = Post.new(title: "My first post")
      end

      it "does not add an error on the 'title' attribute" do
        @post.should have(0).error_on(:title)
      end
    end

    context "title is not present" do

      before(:each) do
        @post = Post.new
      end

      it " adds an error on the title attribute" do
        @post.should have(1).error_on(:title)
      end
    end

  end
end