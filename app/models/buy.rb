class Buy < ApplicationRecord
    belongs_to :product
    belongs_to :provider
    belongs_to :tax

    validates :price, :quantity, presence: true

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
            methods: [:name_product, :corporateName_provider, :fantasyName_provider, :cnpj_provider,
            :shipping_tax, :costAdd_tax, :ipi_tax, :icms_tax, :description_tax]
        )
    end
end