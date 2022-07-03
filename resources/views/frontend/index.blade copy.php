@extends('frontend.layouts.app')

@section('title')
    Apon Health - Online Drug House
@stop
@section('css')
<link type="text/css" href="{{ asset('frontend/css/extra.css') }}" rel="stylesheet">
@endsection
@section('content')

    <section class="slider-main">
        <div class="home-slide">
            <div class="home-slide">
                <div class="slick-carousel" data-slick-arrows="true" data-slick-dots="true" data-slick-autoplay="true">
                    @foreach (\App\Models\Slider::where('published', 1)->get() as $key => $slider)
                        <div class="sliderheight">
                            <img class="d-block w-100 h-100" src="{{ asset($slider->photo) }}" alt="Slider Image">
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>

    <div class="inner-box">
        <div class="container-custom">
        {{-- @php
            $flash_deal = \App\Models\FlashDeal::where('status', 1)->first();
        @endphp

            @if($flash_deal != null && strtotime(date('d-m-Y')) >= $flash_deal->start_date && strtotime(date('d-m-Y')) <= $flash_deal->end_date) --}}
            <!-- Flash Sale start-->
            {{-- <div class="row">
                <div class="single_section">
                    <div class="catagory_title">
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <div class="section_heading">
                                <h2>Flash Sale</h2>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6 text-right">
                            <div class="see_more">
                                <a href="">See More</a>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        @foreach ($flash_deal->flash_deal_products as $key => $flash_deal_product)
                            @php
                                $product = \App\Models\Product::find($flash_deal_product->product_id);
                            @endphp
                            @if ($product != null)
                        <div class="col-md-3 col-sm-6">

                            <div class="product-card-1 mb-3">
                                <figure class="product-image-container">
                                    <a href="{{ route('product', $product->slug) }}" class="product-image d-block" style="background-image:url('{{ asset($product->thumbnail_img) }}');">
                                    </a>
                                    <button class="btn-quickview" onclick="showAddToCartModal({{ $product->id }})"><i class="la la-eye"></i></button>
                                    @if (strtotime($product->created_at) > strtotime('-10 day'))
                                        <span class="product-label label-hot">{{__('New')}}</span>
                                    @endif
                                </figure>
                                <div class="product-details text-center">
                                    <h2 class="product-title text-truncate-2">
                                        <a href="{{ route('product', $product->slug) }}">{{ __($product->name) }}</a>
                                    </h2>
                                    <div class="price-box">
                                        @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                            <span class="old-product-price strong-300">{{ home_base_price($product->id) }}</span>
                                        @endif
                                        <span class="product-price strong-300"><strong>{{ home_discounted_base_price($product->id) }}</strong></span>
                                    </div>

                                    <div class="product-card-1-action">
                                        <button class="paction add-wishlist" title="Add to Wishlist" onclick="addToWishList({{ $product->id }})">
                                            <i class="la la-heart-o"></i>
                                        </button>

                                        <button type="button" class="paction add-cart btn btn-base-1 btn-circle btn-icon-left" onclick="showAddToCartModal({{ $product->id }})">
                                            <i class="fa la la-shopping-cart"></i>{{__('Add to cart')}}
                                        </button>

                                        <button class="paction add-compare" title="Add to Compare" onclick="addToCompare({{ $product->id }})">
                                            <i class="la la-refresh"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>


                        </div>
                            @endif
                            @endforeach
                    </div>
                </div>
            </div> --}}

            {{-- @endif --}}
{{-- brand start  --}}
            <div class="row">
                <div class="single_section" style="padding-top: 50px">
                    <div class="col-md-12 col-sm-12 padding_0">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section_heading">
                                    <h2>Most Popular Brands</h2>
                                </div>
                            </div>
                            @foreach( \App\Models\Brand::latest()->take(12)->get() as $brand)
                            <div class="col-lg-2 col-md-4 col-sm-6 brandmob p-1">
                                <div class="single_item">
                                    <div class="img_back">
                                        <img src="{{ asset($brand->logo) }}" alt="">
                                    </div>
                                    <div class="product_info">
                                        {{-- <div class="pro_logo">
                                            <a href="{{ route('products.brand', $brand->id) }}"><img src="{{ asset($brand->banner) }}" alt=""></a>
                                        </div> --}}
                                        <a href="{{ route('products.brand', $brand->id) }}"><h3>{{ $brand->name }}</h3></a>
                                        {{-- <p>Up to 60% off on our clearance items</p> --}}
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
{{-- brand end  --}}
{{-- popular barnd start  --}}
            <div class="row">
                <div class="single_section popular_style">
                    <div class="catagory_title">
                        <div class="col-md-12 col-sm-12 col-xs-8">
                            <div class="section-title-1">
                                <h3 class="heading-5 strong-700 mb-0">
                                    <span class="mr-4">{{__('Popular Departments')}}</span>
                                    <a href="{{ route('categories.all', 18) }}" class="see_more pull-right">See More</a>
                                </h3>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        @foreach(\App\Models\Category::inRandomOrder()->take(12)->get() as $category)
                            <div class="col-lg-2 col-md-4 brandmob float-left p-1">
                                <a href="{{ route('products.category', $category->id) }}">
                                    <div class="popular_item">
                                        <img class="img-fluid brandimg" data-original="{{ asset($category->banner) }}" alt="apon health popular image">
                                        <p>{{ $category->name }}</p>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
{{-- popular brand end  --}}
{{-- tablet start  --}}
<div class="my-4 bg-white pt-3 pl-3 pr-4">
    <div class="section-title-1">
        <h3 class="heading-5 strong-700 mb-0">
            <span class="mr-4">{{__('Our Popular Tablet')}}</span>
            <a href="{{ route('products.category', 18) }}" class="see_more pull-right">See More</a>
        </h3>
    </div>
    <div class="caorusel-box">
        <div class="slick-carousel" data-slick-items="5" data-slick-lg-items="5"  data-slick-md-items="4" data-slick-sm-items="2" data-slick-xs-items="2">
            @foreach (filter_products(\App\Models\Product::where('category_id', 18))->limit(10)->get() as $key => $related_product)
                <div class="card card-product m-2 shop-cards shop-tech">
                    <div class="card-body p-0">
                        <div class="card-image">
                            <a href="{{ route('product', $related_product->slug) }}" class="d-block">
                                <img src="{{ asset($related_product->thumbnail_img) }}" height="200px" width="100%" alt="">
                            </a>
                            {{-- <a href="{{ route('product', $related_product->slug) }}" class="d-block" style="background-image:url('{{ asset($related_product->thumbnail_img) }}');">
                            </a> --}}

                        </div>

                        <div class="pl-3 pt-1 pr-3">
                            <div class="price-box">
                                @if(home_base_price($related_product->id) != home_discounted_base_price($related_product->id))
                                    <del class="old-product-price strong-400">{{ home_base_price($related_product->id) }}</del>
                                @endif
                                <span class="product-price strong-600">{{ home_discounted_base_price($related_product->id) }}</span>
                            </div>
                            <h2 class="product-title p-0 mt-2 text-truncate-2">
                                <a href="{{ route('product', $related_product->slug) }}">{{ __($related_product->name) }}</a>
                            </h2>

                        </div>
                        {{-- add to cart  --}}
                        <div class="pb-1">
                            <button class="paction add-wishlist" title="Add to Wishlist" onclick="addToWishList({{ $related_product->id }})">
                                <i class="la la-heart-o"></i>
                            </button>

                            <button type="button" class="paction add-cart btn btn-base-1 btn-circle btn-icon-left" onclick="showAddToCartModal({{ $related_product->id }})">
                                <i class="fa la la-shopping-cart"></i>{{__('Add to cart')}}
                            </button>

                            <button class="paction add-compare" title="Add to Compare" onclick="addToCompare({{ $related_product->id }})">
                                <i class="la la-refresh"></i>
                            </button>
                        </div>
                        {{-- add to cart end  --}}
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

{{-- tablet stop  --}}
{{-- Most popular doctor start  --}}

<!--<div class="my-4 bg-white pt-3 pl-3 pr-4">-->
<!--    <div class="section-title-1">-->
<!--        <h3 class="heading-5 strong-700 mb-0">-->
<!--            <span class="mr-4">{{__('Our Most Popular Doctor')}}</span>-->
<!--            <a href="{{ route('products.category', 18) }}" class="see_more pull-right">See More</a>-->
<!--        </h3>-->
<!--    </div>-->
<!--    <div class="caorusel-box">-->
<!--        <div class="slick-carousel" data-slick-items="5" data-slick-lg-items="5"  data-slick-md-items="4" data-slick-sm-items="2" data-slick-xs-items="2">-->
<!--            @foreach (\App\Models\User::where('user_type', 'doctor')->limit(10)->get() as $key => $doctor)-->
<!--                <div class="card card-product m-2 shop-cards shop-tech" >-->
<!--                    <div class="card-body p-0">-->
<!--                        <div class="card-image">-->
<!--                            <a href="" class="d-block">-->
<!--                                <img src="@if(!empty($doctor->avatar_original)) {{ asset($doctor->avatar_original) }} @else {{ asset('uploads/1.jpg') }} @endif" height="200px" width="100%" alt="">-->
<!--                            </a>-->
<!--                        </div>-->

<!--                        <div class="pl-3 pt-1 pr-3" style="height: 150px">-->
<!--                            <p><b>Dr. Name: {{$doctor->name}}</b>-->
<!--                            <br><b>Designation: {{$doctor->designation}}</b>-->
<!--                            <br> Specialist:-->
<!--                            @foreach(\App\Models\DoctorDepartment::where('user_id',$doctor->id)->get() as $key => $depid)-->
<!--                            {{\App\Models\DocDepartment::where('id', $depid->dep_id)->first()->dep_name}} ||-->
<!--                            @endforeach-->

<!--                            </p>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            @endforeach-->
<!--        </div>-->
<!--    </div>-->
<!--</div>-->

{{-- Most popular doctor stop  --}}
            <div class="row">
                <div class="single_section popular_style">
                    <div class="catagory_title">
                        <div class="col-md-12">
                            <div class="section-title-1">
                                <h3 class="heading-5 strong-700 mb-0">
                                    <span class="mr-4">{{__('All Product')}}</span>
                                    <a href="{{ route('products') }}" class="see_more pull-right">See More</a>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="products-box-bar bg-white">
                        <div class="row product-list mb-1" id="results">
                            {{-- scroling product show here  --}}
                        </div>
                    </div>
                </div>
            </div>

<div class="clear"></div>
        </div>
    </div>

@endsection
@section('script')
<script>
   var page = 1;
   load_more(page);
   $(window).scroll(function() { //detect page scroll
      if($(window).scrollTop() + $(window).height() >= $(document).height()) { //if user scrolled from top to bottom of the page
      page++; //page number increment
      load_more(page); //load content
      }
    });
    function load_more(page){
        $.ajax({
           url: '?page=' + page,
           type: "get",
           datatype: "html",
           beforeSend: function()
           {
              $('.ajax-loading').show();
            }
        })
        .done(function(data)
        {
            if(data.length == 0){
            console.log(data.length);
            //notify user if nothing to load
            $('.ajax-loading').html("No more records!");
            return;
          }
          $('.ajax-loading').hide(); //hide loading animation once data is received
          $("#results").append(data); //append data into #results element
           console.log('data.length');
       })
       .fail(function(jqXHR, ajaxOptions, thrownError)
       {
          alert('No response from server');
       });
    }
</script>
<script type="text/javascript">
	$("img").lazyload({
	    effect : "fadeIn"
	});
</script>
@endsection
