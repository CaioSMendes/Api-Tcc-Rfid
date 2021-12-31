class Product < ApplicationRecord
    belongs_to :categorie
    belongs_to :provider
    has_one_attached :image

    validates :name, :quantity, :unity, :price, presence: true

    def name_categorie
        self.categorie.name
    end

    def cod_categorie
        self.categorie.codCategorie
    end

    def corporateName_provider
        self.provider.corporateName
    end

    def fantasyName_provider
        self.provider.fantasyName
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:name_categorie, :cod_categorie, :corporateName_provider, :fantasyName_provider]
        )
    end
end
