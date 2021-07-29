namespace :dev do
  desc "TODO"
  task setup: :environment do
    p "Cadastrando categorias"
    categories = %w(Ferramentas Eletronicos Alimentos )
    10.times do |i|
      Categorie.create!(
        name: Faker::Lorem.word,
        codCategorie: Faker::Number.number(digits: 10)
      )
    end
    p "Cadastrando Produtos"
    10.times do |i|
      Product.create!(
        name: Faker::ElectricalComponents.active,
        description: Faker::ElectricalComponents.electromechanical,
        quantity: Faker::Number.between(from: 1, to: 500),
        unity: Faker::Measurement.height,
        price: Faker::Commerce.price,
        date: Faker::Date.in_date_period ,
        productCode: Faker::Barcode.ismn,
        gtin: Faker::Barcode.ean(13),
        rfid: Faker::Barcode.upc_e,
        productMin: Faker::Number.between(from: 1, to: 10),
        productMax: Faker::Number.between(from: 10, to: 100),
        salePrice: Faker::Commerce.price,
        saleCost: Faker::Commerce.price,
        avaliable: Faker::Number.between(from: 10, to: 100),
        categorie: Categorie.all.sample
    )
    end
    p "Cadastrando Enderecos"
    10.times do |i|
      Address.create!(
        city: Faker::Address.city,
        street: Faker::Address.street_name,
        neighborhood: Faker::Address.street_address ,
        number: Faker::Address.building_number,
        complement: Faker::Address.full_address,
        state: Faker::Address.state,
        zipcode: Faker::Address.zip_code
    )
    end
    p "Cadastrando Fornecedores"
    10.times do |i|
      Provider.create!(
        corporateName: Faker::Company.name,
        fantasyName: Faker::Company.industry,
        phone: Faker::PhoneNumber.cell_phone,
        cnpj: Faker::Company.brazilian_company_number,
        stateRegistration: Faker::Company.spanish_organisation_number,
        email: Faker::Internet.email,
        business: Faker::Company.type,
        codeProvider: Faker::Number.between(from: 10, to: 100),
        address: Address.all.sample
    )
    end 
  end

end
