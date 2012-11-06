require 'spec_helper'

describe "spree_authors/index" do
  before(:each) do
    assign(:spree_authors, [
      stub_model(Spree::Author,
        :biography => "MyText",
        :name => "Name",
        :permalink => "Permalink"
      ),
      stub_model(Spree::Author,
        :biography => "MyText",
        :name => "Name",
        :permalink => "Permalink"
      )
    ])
  end

  it "renders a list of spree_authors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Permalink".to_s, :count => 2
  end
end
