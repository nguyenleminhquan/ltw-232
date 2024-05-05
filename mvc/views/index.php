<div class="section-container">

    <section class="hero macbook-air mb-3">
        <div class="hero-container">
            <div class="title">
                <h2 class="title-heading">MacBook Air</h2>
                <h3 class="title-sub-heading">Cỗ máy M3. Gọn bâng. Cân mọi việc</h3>
            </div>
        </div>
    </section>

    <section class="hero iphone-15-pro mb-3">
        <div class="hero-container">
            <div class="title">
                <h2 class="title-heading">iPhone 15 Pro</h2>
                <h3 class="title-sub-heading">Titan. Thật bền. Thật nhẹ. Thật Pro</h3>
            </div>
        </div>
    </section>

    <section class="hero iphone-15 mb-3">
        <div class="hero-container">
            <div class="title">
                <h2 class="title-heading">iPhone 15</h2>
                <h3 class="title-sub-heading">Camera mới. Thiết kế mới.</h3>
            </div>
        </div>
    </section>

    <div class="row gx-0 group-hero">
        <section class="hero ipad mb-3 col-lg-6 col-md-6 col-sm-12 col-12">
            <div class="hero-container">
                <div class="title">
                    <h2 class="title-heading">iPad</h2>
                    <h3 class="title-sub-heading">Thấy là yêu. Vẽ là phiêu. Tuyệt diệu.</h3>
                </div>
            </div>
        </section>

        <section class="hero ipad-pro mb-2 col-lg-6 col-md-6 col-sm-12 col-12">
            <div class="hero-container">
                <div class="title">
                    <h2 class="title-heading">iPad Pro</h2>
                    <h3 class="title-sub-heading">Siêu mạnh mẽ với <span class="logo logo-image-ipad-pro-promo-m2-chip"></span></h3>
                </div>
            </div>
        </section>

        <section class="hero macbook-pro mb-3 col-lg-6 col-md-6 col-sm-12 col-12">
            <div class="hero-container">
                <div class="title">
                    <h2 class="title-heading">MacBook Pro</h2>
                    <h3 class="title-sub-heading">Chấn động. Ấn tượng.</h3>
                </div>
            </div>
        </section>

        <section class="hero airpods-pro mb-3 col-lg-6 col-md-6 col-sm-12 col-12">
            <div class="hero-container">
                <div class="title">
                    <h2 class="title-heading">AirPods Pro</h2>
                    <h3 class="title-sub-heading">Âm thanh thích ứng. Đang phát.</h3>
                </div>
            </div>
        </section>
    </div>

    <div class="home-banner">
        <div class="slideshow-container">
            <div class="mySlides img-fade">
                <img src="./public/images/hero_iphone15pro__i70z9oz3hj2i_large.jpg">
            </div>

            <div class="mySlides img-fade">

                <img src="./public/images/mac_book_air_slide_show.jpg">
            </div>

            <div class="mySlides img-fade">
                <img src="./public/images/apple_watch_large.jpg">
            </div>
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <script>
            var slideIndex = 1;
            showSlides(slideIndex);

            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");

                if (n > slides.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = slides.length
                }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slides[slideIndex - 1].style.display = "block";
            }
        </script>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="./public/js/slick.js"></script>