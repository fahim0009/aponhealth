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
                                {{-- <a href="{{ route('checkout.shipping_info') }}" class="link link--style-1 text-capitalize btn btn-base-1 px-3 py-1 light-text">
                                    <i class="la la-mail-forward"></i> {{__('Checkout')}}
                                </a> --}}
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
