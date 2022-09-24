# commercial-website
Completely customizable Ruby on Rails website template for commercial portfolios for businesses.
Built along with [flowbite](https://flowbite.com/docs/getting-started/rails/).

## Setup

1. Install docker, and make sure the service is up using command `systemctl status docker`.
2. Run application with docker-compose:
   ```
   docker-compose up
   ```
   This starts the application at http://0.0.0.0:3000.

## Documentation

Anyone can configure the website to show their data without any changes in the code, by simply editing the files under /data directory of the repo. 
### Configure Data

All data is under `./data` directory of this project, in the following files.

- ./data/about.yaml
- ./data/home.yaml
- ./data/products.yaml
- ./data/products/<product_id>.yaml

To add your products, mention them in `./data/products.yaml` and make a new file in `./data/products/` with the `id` of the product you used in products.yaml file.

Example. in `./data/products.yaml`:

```
xyz:
  :id: xyz       // [imp] same as the dictionary key (the above line) 
  :name: Table lamps
  :description: Lorem Ipsum is simply dummy text.
  :image: /images/sample.jpg             // add the image in `./public/images/`
  :featured:
    - item_1
    - item_2
    - item_3
    - item_4
```

And make a file `./data/products/xyz.yaml`:

```
title: Table lamps
:id: desk_clocks
:description: Lorem Ipsum is simply dummy text of the printing and typesetting industry.
:icon: /images/product_1/icons-100.png
:items:
  item_1:  
    :id: item_1      // [imp] same as dictionary key (line above)
    :name: Wooden Ball Desk Clock
    :description: This is Item 1
    :short_description: Accentuate your desk with this wooden spherical sculpture which functions as a desk clock.
    :images: 
        - /images/xyz-1.jpg         // add the image in `./public/images/`
        - /images/xyz-2.jpg         // add the image in `./public/images/`
```
