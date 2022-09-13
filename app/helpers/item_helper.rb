module ItemHelper
    def get_item_info(product_id, item_id)
        product_info = YAML::load(File.open("data/products/" + product_id + ".yaml"))
        return product_info[:items][item_id]
    end
end
