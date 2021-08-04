class Buy < ApplicationRecord
    belongs_to :product
    belongs_to :provider

    def name_product
        self.product.name
    end

    def corporateName_provider
        self.provider.corporateName
    end

    def fantasyName_provider
        self.provider.fantasyName
    end

    def cnpj_provider
        self.provider.cnpj
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:name_product, :corporateName_provider, :fantasyName_provider, :cnpj_provider]
        )
    end
end
