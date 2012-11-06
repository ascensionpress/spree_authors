require 'spec_helper'

describe "spree_authors/show" do
  before(:each) do
    @author = assign(:author, stub_model(Spree::Author,
      :biography => "MyText",
      :name => "Name",
      :permalink => "Permalink"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Name/)
    rendered.should match(/Permalink/)
  end
end
