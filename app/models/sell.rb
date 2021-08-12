class Sell < ApplicationRecord
    belongs_to :product
    belongs_to :client
    belongs_to :tax

    validates :price, :quantity, presence: true

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

    def shipping_tax
        self.tax.shipping
    end

    def costAdd_tax
        self.tax.costAdd
    end

    def ipi_tax
        self.tax.ipi
    end

    def icms_tax
        self.tax.icms
    end

    def description_tax
        self.tax.description
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:name_product, :corporateName_client, :fantasyName_client, :cnpj_client,
            :shipping_tax, :costAdd_tax, :ipi_tax, :icms_tax, :description_tax]
        )
    end
end