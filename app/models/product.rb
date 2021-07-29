class Product < ApplicationRecord
    belongs_to :categorie

    def name_categorie
        self.categorie.name
    end

    def cod_categorie
        self.categorie.codCategorie
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:name_categorie, :cod_categorie]
        )
    end
end

