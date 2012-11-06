require 'spec_helper'

describe "spree_authors/edit" do
  before(:each) do
    @author = assign(:author, stub_model(Spree::Author,
      :biography => "MyText",
      :name => "MyString",
      :permalink => "MyString"
    ))
  end

  it "renders the edit author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => spree_authors_path(@author), :method => "post" do
      assert_select "textarea#author_biography", :name => "author[biography]"
      assert_select "input#author_name", :name => "author[name]"
      assert_select "input#author_permalink", :name => "author[permalink]"
    end
  end
end
