require 'rails_helper'

describe Delegado do
  it "Factory valida" do
    expect(FactoryGirl.create(:delegado)).to be_valid
  end

  describe "Criar delegado" do
    it "ID da WCA" do
      delegado = FactoryGirl.create(:delegado)
      delegado.update_column(:id_wca, "ola")
      expect(delegado).to be_invalid
      delegado.update_column(:id_wca, "2007GUIm01")
      expect(delegado).to be_invalid
      delegado.update_column(:id_wca, "2007GUIM01")
      expect(delegado).to be_valid
    end
  end
end
