require 'rails_helper'

describe Noticia do
  it "Factory valida" do
    expect(FactoryGirl.create(:noticia)).to be_valid
  end

  describe "Nova noticia" do
    it "slug correto" do
      noticia = FactoryGirl.create :noticia
      expect(noticia.slug).to eq noticia.titulo.parameterize
    end
  end
end
