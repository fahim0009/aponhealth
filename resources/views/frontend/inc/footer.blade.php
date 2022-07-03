<footer class="py-3 mt-4">
    <div class="container">
        <div class="my-4">
            <div class="row justify-content-lg-between">
                <div class="col-lg-3 col-md-3 col-sm-6 col-6 my-2">
                    <h5 class="text-white">INFORMATION</h5>
                    <!-- Nav Link -->
                    <ul class="nav nav-sm nav-x-0 nav-white flex-column">
                        <li class="nav-item py-1"><a class="text-white"
                                href="{{ route('contactus') }}">Contact Us</a></li>
                        <li class="nav-item py-1"><a class="text-white"
                                href="{{ route('aboutus') }}">About Us</a></li>
                        <li class="nav-item py-1"><a class="text-white"
                                href="{{ route('privacypolicy') }}">Privacy Policy</a></li>
                        <li class="nav-item py-1"><a class="text-white"
                                href="{{ route('terms') }}">Terms and Conditions</a></li>
                    </ul>
                    <!-- End Nav Link -->
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-6 my-2">
                    <h5 class="text-white">USEFUL LINKS</h5>
                    <!-- Nav Link -->
                    <ul class="nav nav-sm nav-x-0 nav-white flex-column">
                        <li class="nav-item py-1"><a class="text-white" href="{{ route('faq') }}">FAQ</a>
                        </li>
                        <!--<li class="nav-item py-1"><a class="text-white"-->
                        <!--        href="{{ route('frontend.address') }}">Address</a></li>-->
                        <li class="nav-item py-1"><a class="text-white"
                            href="{{route('products')}}">All Product</a></li>
                        {{-- <li class="nav-item py-1"><a class="text-white"
                                href="{{route('frontend.medicine')}}">Medicines</a></li> --}}
                        <li class="nav-item py-1"><a class="text-white"
                            href="{{route('compare')}}">Compare</a></li>

                       <!-- <li class="nav-item py-1"><a class="text-white"
                                href="{{ route('frontend.specialoffer') }}">Special Offers</a></li>-->
                    </ul>
                    <!-- End Nav Link -->
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-6 my-2">
                    <!-- End Nav Link -->
                    <div id="contact">
                        <h5 class="text-white">CONTACT US</h5>
                        <div class="text-white">
                            <span class="iconify" data-icon="dashicons:phone" data-inline="false"></span>
                            01886335834
                        </div>
                        <ul class="list-inline mb-0 mt-3 social-sites">
                            <li class="list-inline-item">
                                <a class="text-white" href="https://www.facebook.com/aponhealth"target= "_blank">Facebook
                                    <span class="iconify" data-icon="ant-design:facebook-filled"
                                        data-inline="false"></span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                

info@aponhealth.com</br>
House-31, Road-24,Block-D,Mirpur-12,Dhaka.
                            </li>
                          <!--  <li class="list-inline-item">
                                <a class="text-white" href="">
                                    <span class="iconify" data-icon="fa-brands:linkedin" data-inline="false"></span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-white" href="">
                                    <span class="iconify" data-icon="fa-brands:twitter-square"
                                        data-inline="false"></span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-white" href="">
                                    <span class="iconify" data-icon="fa-brands:instagram-square"
                                        data-inline="false"></span>
                                </a>
                            </li>-->
                            <!-- End Social Networks -->
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-6 my-2">
                    <h5 class="text-white">OUR APP</h5>
                    Will be available very soon
                    <!-- Nav Link -->
                   <!-- <ul class="nav nav-sm nav-x-0 nav-white flex-column">
                        <li class="nav-item w-100">
                            <a class="py-1 d-block app_download_link" href=" ">
                                <img loading="lazy" class='img-fluid'
                                    src="{{asset('frontend/images/images/google_play.png')}}" alt="">
                            </a>
                        </li>
                        <li class="nav-item w-100">
                            <a class="py-1 d-block app_download_link" href=" "><img class='img-fluid' loading="lazy"
                                    src="{{asset('frontend/images/images/apple_store.png')}}"></a>
                        </li>
                    </ul>-->
                    <!-- End Nav Link -->
                </div>
            </div>
        </div>
        <hr class="my-4" style="background:rgba(255,255,255,0.5)">
        <div class="space-1">
            <!-- Copyright -->
            <div class="text-lg-center mx-lg-auto">
                <p class="text-white small">© 2021 Apon Health. All rights reserved.</p>
            </div>
            <!-- End Copyright -->
        </div>
    </div>
</footer>
<div class="bottom-menu" id='bottom-menu'>
    <div class="links">
        <div class="nav-cart-box dropdown" id="cart_items1">
            <a href="" class="nav-box-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img src="{{asset('frontend/images/images/shopping-cart.png')}}" height="20px">
                @if(Session::has('cart'))
                <div class="cartitem">
                    {{ count(Session::get('cart'))}}
                 </div>

                @else
                <div class="cartitem">
                    0
                 </div>

                @endif
            </a>
            <ul class="dropdown-menu dropdown-menu-right px-0">
                <li>
                    <div class="dropdown-cart px-0">
                        @if(Session::has('cart'))
                            @if(count($cart = Session::get('cart')) > 0)
                                <div class="dc-header">
                                    <h3 class="heading heading-6 strong-700">{{__('Cart Items')}}</h3>
                                </div>
                                <div class="dropdown-cart-items c-scrollbar">
                                    @php
                                        $total = 0;
                                    @endphp
                                    @foreach($cart as $key => $cartItem)
                                        @php
                                            $product = \App\Models\Product::find($cartItem['id']);
                                            $total = $total + $cartItem['price']*$cartItem['quantity'];
                                        @endphp
                                        <div class="dc-item">
                                            <div class="d-flex align-items-center">
                                                <div class="dc-image">
                                                    <a href="{{ route('product', $product->slug) }}">
                                                        <img src="{{ asset($product->thumbnail_img) }}" class="img-fluid" alt="">
                                                    </a>
                                                </div>
                                                <div class="dc-content">
                                                    <span class="d-block dc-product-name text-capitalize strong-600 mb-1">
                                                        <a href="{{ route('product', $product->slug) }}">
                                                            {{ __($product->name) }}
                                                        </a>
                                                    </span>

                                                    <span class="dc-quantity">x{{ $cartItem['quantity'] }}</span>
                                                    <span class="dc-price">{{ single_price($cartItem['price']*$cartItem['quantity']) }}</span>
                                                </div>
                                                <div class="dc-actions">
                                                    <button onclick="removeFromCart({{ $key }})">
                                                        <i class="la la-close"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                                <div class="dc-item py-3">
                                    <span class="subtotal-text">{{__('Subtotal')}}</span>
                                    <span class="subtotal-amount">{{ single_price($total) }}</span>
                                </div>
                                <div class="py-2 text-center dc-btn">
                                    <ul class="inline-links inline-links--style-3">
                                        <li class="pr-3">
                                            <a href="{{ route('cart') }}" class="link link--style-1 text-capitalize btn btn-base-1 px-3 py-1">
                                                <i class="la la-shopping-cart"></i> {{__('View cart')}}
                                            </a>
                                        </li>
                                        <li>
                                        @if(Auth::check())
                                        <a href="{{ route('checkout.shipping_info') }}" class="link link--style-1 text-capitalize btn btn-base-1 px-3 py-1 light-text"><i class="la la-mail-forward"></i> {{__('Checkout')}}</a>
                                        @else
                                        <a href="{{ route('cart.login') }}" class="link link--style-1 text-capitalize btn btn-base-1 px-3 py-1 light-text"><i class="la la-mail-forward"></i> {{__('Checkout')}}</a>
                                        @endif
                                        </li>
                                    </ul>
                                </div>
                            @else
                                <div class="dc-header">
                                    <h3 class="heading heading-6 strong-700">{{__('Your Cart is empty')}}</h3>
                                </div>
                            @endif
                        @else
                            <div class="dc-header">
                                <h3 class="heading heading-6 strong-700">{{__('Your Cart is empty')}}</h3>
                            </div>
                        @endif
                    </div>
                </li>
            </ul>
        </div>
        <a href="{{route('wishlists.index')}}">
            <span class="iconify" data-icon="ant-design:heart-outlined"></span>
            <span>Wishlist</span>
        </a>
        <a href="{{route('products')}}">
            <div class="middle-inner">
                <span class="iconify" data-icon="fluent:building-shop-24-regular">  </span>

            </div>
        </a>
        <a href="{{route('dashboard')}}">
            <span class="iconify" data-icon="codicon:account"></span>
            <span>Profile</span>
        </a>
        <a href="{{route('purchase_history.index')}}">
            <span class="iconify" data-icon="mdi:application-edit"></span>
            <span>My Order</span>
        </a>
    </div>
</div>
