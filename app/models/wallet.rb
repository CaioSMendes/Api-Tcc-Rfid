class Wallet < ApplicationRecord
    belongs_to :buy
    belongs_to :sell

    def price_buy
        self.buy.price
    end

    def price_sell
        self.sell.price
    end

    def as_json(options={})
        super(
            root: true,
            methods: [:price_buy, :price_sell]
        )
    end
end
