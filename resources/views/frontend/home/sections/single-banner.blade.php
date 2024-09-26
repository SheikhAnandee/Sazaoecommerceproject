<section id="wsus__single_banner" class="wsus__single_banner_2">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6">
                @if ($homepage_section_banner_two->banner_one->status == 1)
                <div class="wsus__single_banner_content">
                    <div class="wsus__single_banner_img" style="background-image: url('{{ asset($homepage_section_banner_two->banner_one->banner_image )}}'); background-size: cover; background-position: center;">
                    </div>                      
                    <div class="wsus__single_banner_text">
                        <h6>sell on <span>35% off</span></h6>
                        <h3>smart watch</h3>
                        <a class="shop_btn" href="#">shop now</a>
                    </div>
                </div>
                @endif
            </div>
            <div class="col-xl-6 col-lg-6">
                @if ($homepage_section_banner_two->banner_two->status == 1)
                <div class="wsus__single_banner_content single_banner_2">
                    <div class="wsus__single_banner_img"style="background-image: url('{{ asset($homepage_section_banner_two->banner_two->banner_image)}}'); background-size: cover; background-position: center;">
                    </div>   
                    <div class="wsus__single_banner_text">
                        <h6>New Collection</h6>
                        <h3>Laptops</h3>
                        <a class="shop_btn" href="#">shop now</a>
                    </div>
                </div>
                @endif
            </div>
        </div>
    </div>
</section>

{{-- <section id="wsus__single_banner" class="wsus__single_banner_2">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6">
                @if ($homepage_section_banner_two->banner_one->status == 1)
                <div class="wsus__single_banner_content" style="background-image" background-size: cover; background-position: center>
                    <a href="{{$homepage_section_banner_two->banner_one->banner_url}}">
                        <img class="img-gluid" src="{{asset($homepage_section_banner_two->banner_one->banner_image)}}" alt="">
                    </a>
                </div>
                @endif
                  <div class="wsus__single_banner_text">
                        <h6>sell on <span>35% off</span></h6>
                        <h3>smart watch</h3>
                        <a class="shop_btn" href="#">shop now</a>
                    </div>
            </div>
            <div class="col-xl-6 col-lg-6">
                @if ($homepage_section_banner_two->banner_two->status == 1)
                <div class="wsus__single_banner_content">
                    <a href="{{$homepage_section_banner_two->banner_two->banner_url}}">
                        <img class="img-gluid" src="{{asset($homepage_section_banner_two->banner_two->banner_image)}}" alt="">
                    </a>
                </div>
                @endif
            </div>
        </div>
    </div>
</section> --}}
