module ProductsHelper
    def get_all_products
        YAML::load(File.open("data/products.yaml"))
    end

    def get_product_info(product_id)
        YAML::load(File.open("data/products/" + product_id + ".yaml"))
    end
end
