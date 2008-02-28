require File.dirname(__FILE__) + '/../spec_helper'

describe Content, "with fixtures loaded" do
  fixtures :contents, :posts, :pages, :comments, :taggings, :tags
  
  before(:each) do
    @content = contents(:one)
    @post_content = contents(:one)
    @page_content = contents(:five)
  end

  it "should be valid" do
    @content.should be_valid
  end
  
  it "should be published" do
	@post_content.should be_published
  end
  
  it "should not be published" do
	@page_content.should_not be_published
  end

  it "should be valid with a nil title field" do
    @content.title = nil

    @content.should be_valid
  end
  
  it "should not be valid with a nil text field" do
    @content.text = nil
    
    @content.should_not be_valid
  end
  
  it "should have an owner of class Post" do
    @post_content.owner.class.should == Post
  end
  
  it "can be assigned to a specific Post" do
    @post_content.owner.should == posts(:one)
  end
  
  it "should have an owner of class Page" do
    @page_content.owner.class.should == Page
  end
  
  it "should be assigned to a specific Page" do
    @page_content.owner.should == pages(:one)
  end
  
  it "should have two tags associated with it" do
    @content.should have(2).tags
  end
end