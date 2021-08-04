class Sell < ApplicationRecord
    belongs_to :product
    belongs_to :client

    def name_product
        self.product.name
    end

    def corporateName_client
        self.client.corporateName
    end

    def fantasyName_client
        self.client.fantasyName
    end

    def cnpj_client
        self.client.cnpj
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:name_product, :corporateName_client, :fantasyName_client, :cnpj_client]
        )
    end
end
