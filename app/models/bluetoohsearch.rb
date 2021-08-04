class Bluetoohsearch < ApplicationRecord
    belongs_to :product

    def rfid_product
        self.product.rfid
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:rfid_product]
        )
    end
end
