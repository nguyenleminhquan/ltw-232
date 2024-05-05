<div class="products">
    <!-- <h1 class="lg-title">Tất cả sản phẩm</h1> -->
    <div class="category-container mt-2">
        <div class="product-category">
            <div class="all-product">
                <p>Tất cả</p>
            </div>
            <div class="iphone">
                <img src="/public/images/iphone_15_small.jpg" alt="">
                <p>iPhone</p>
            </div>
            <div class="ipad">
                <img src="/public/images/ipad_medium.jpg" alt="">
                <p>iPad</p>
            </div>
            <div class="macbook">
            <img src="/public/images/mac_book_air_small.jpg" alt="">
                <p>MacBook</p>
            </div>
            <div class="accessory">
                <img src="/public/images/airpods_max_large.png" alt="">
                <p>Phụ kiện</p>
            </div>
        </div>
    </div>

    <div class="product-filter">
        <select class="form-select" name="" id="SORT">
            <option value="newold">Mới nhất</option>
            <option value="nameasc">Từ A - Z</option>
            <option value="namedesc">Từ Z - A</option>
            <option value="priceincrease">Giá thấp đến cao</option>
            <option value="pricereduce">Giá cao đến thấp</option>
        </select>
    </div>
    <div class="product-items">
        <?php foreach ($data["product"] as $key => $product) {
        ?>
            <!-- single product -->
            <div id="<?= $product["id"] ?>" name="<?= $product["category"] ?>" class="product wow fadeInDown">
                <div class="product-img">
                    <img src="/public/upload/products/<?= $product["thumnail"] ?>" alt="product image">
                </div>

                <div class="product-btns">
                    <button class="btn-cart">Add to cart</button>
                </div>

                <div class="product-info" name="<?= $product["price"] ?>">
                    <div class="product-info-top rating">
                        <h2 class="sm-title"><?= $product["category"] ?></h2>
                        <div class="rating">
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="far fa-star"></i></span>
                        </div>
                    </div>
                    <a href="#" class="product-name"><?= $product["name"] ?></a>
                    <p class="product-price"><?= number_format($product["price"], 0, "", ",") ?>đ</p>
                </div>

                <!-- <div class="off-info">
                <h2 class="sm-title">25% off</h2>
            </div> -->
            </div>
        <?php } ?>
        <!-- end of single product -->

    </div>
</div>