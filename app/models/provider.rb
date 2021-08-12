class Provider < ApplicationRecord
    belongs_to :address

    validates :corporateName, :fantasyName, :phone, :cnpj, :email, presence: true

    def city_address
        self.address.city
    end

    def street_address
        self.address.street
    end

    def neighborhood_address
        self.address.neighborhood
    end

    def number_address
        self.address.number
    end

    def complement_address
        self.address.complement
    end

    def state_address
        self.address.state
    end

    def zipcode_address
        self.address.zipcode
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:city_address, :street_address, :neighborhood_address, :number_address, :complement_address,
            :state_address, :zipcode_address]
        )
    end
end