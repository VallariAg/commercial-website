module HomeHelper
    def get_featured_products(featured_products)
        all_products = get_all_products()
        feat_products_details = {}
        for product_id in featured_products do
            feat_products_details[product_id] = all_products[product_id]
        end
        return feat_products_details
    end
end
