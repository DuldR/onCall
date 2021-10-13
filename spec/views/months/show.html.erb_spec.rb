require 'rails_helper'

RSpec.describe "months/show", type: :view do
  before(:each) do
    @month = assign(:month, Month.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
