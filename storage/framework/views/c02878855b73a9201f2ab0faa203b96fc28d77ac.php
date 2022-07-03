<section class="slice-xs sct-color-2 border-bottom">
    <div class="container container-sm">
        <div class="row cols-delimited">
            <div class="col-4">
                <div class="icon-block icon-block--style-1-v5 text-center">
                    <div class="block-icon mb-0">
                        <i class="icon-hotel-restaurant-105"></i>
                    </div>
                    <div class="block-content d-none d-md-block">
                        <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize">1. <?php echo e(__('My Cart')); ?></h3>
                    </div>
                </div>
            </div>

            <div class="col-4">
                <div class="icon-block icon-block--style-1-v5 text-center">
                    <div class="block-icon mb-0">
                        <i class="icon-finance-067"></i>
                    </div>
                    <div class="block-content d-none d-md-block">
                        <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize">2. <?php echo e(__('Shipping info')); ?></h3>
                    </div>
                </div>
            </div>

            <div class="col-4">
                <div class="icon-block icon-block--style-1-v5 text-center active">
                    <div class="block-icon c-gray-light mb-0">
                        <i class="icon-finance-059"></i>
                    </div>
                    <div class="block-content d-none d-md-block active">
                        <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize">3. <?php echo e(__('Payment')); ?></h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="py-4 gry-bg">
    <div class="container">
        <div class="row cols-xs-space cols-sm-space cols-md-space">
            <div class="col-lg-8">
                <form action="<?php echo e(route('payment.checkout')); ?>" class="form-default" data-toggle="validator" role="form" method="POST">
                    <?php echo csrf_field(); ?>
                    <div class="card">
                        <div class="card-title px-4">
                            <h3 class="heading heading-5 strong-500">
                                <?php echo e(__('Select a payment option')); ?>

                            </h3>
                        </div>
                        <div class="card-body text-center">
                            <ul class="inline-links">
                                <?php if(\App\Models\BusinessSetting::where('type', 'paypal_payment')->first()->value == 1): ?>
                                    <li>
                                        <label class="payment_option">
                                            <input type="radio" id="" name="payment_option" value="paypal" checked>
                                            <span>
                                                <img src="<?php echo e(asset('frontend/images/icons/cards/paypal.png')); ?>" class="img-fluid">
                                            </span>
                                        </label>
                                    </li>
                                <?php endif; ?>
                                <?php if(\App\Models\BusinessSetting::where('type', 'stripe_payment')->first()->value == 1): ?>
                                    <li>
                                        <label class="payment_option">
                                            <input type="radio" id="" name="payment_option" value="stripe" checked>
                                            <span>
                                                <img src="<?php echo e(asset('frontend/images/icons/cards/stripe.png')); ?>" class="img-fluid">
                                            </span>
                                        </label>
                                    </li>
                                <?php endif; ?>
                                <?php if(\App\Models\BusinessSetting::where('type', 'sslcommerz_payment')->first()->value == 1): ?>
                                    
                                <?php endif; ?>
                                <?php if(\App\Models\BusinessSetting::where('type', 'cash_payment')->first()->value == 1): ?>
                                    <li>
                                        <label class="payment_option">
                                            <input type="radio" id="" name="payment_option" value="cash_on_delivery" checked>
                                            <span>
                                                <img src="<?php echo e(asset('frontend/images/icons/cards/cod.png')); ?>" class="img-fluid">
                                            </span>
                                        </label>
                                    </li>
                                <?php endif; ?>
                            </ul>

                            <?php if(Auth::check()): ?>
                                <div class="text-center mt-4">
                                    or
                                    <div class="h5">Your wallet balance : <strong><?php echo e(single_price(Auth::user()->balance)); ?></strong></div>
                                    <?php
                                    $subtotal = 0;
                                    $tax = 0;
                                    $shipping = 0;
                                    ?>

                                    <?php $__currentLoopData = Session::get('cart'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $cartItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                    $product = \App\Models\Product::find($cartItem['id']);
                                    $subtotal += $cartItem['price']*$cartItem['quantity'];

                                    $drate = \App\Models\Master::where('softcode','=','discount')->first()->hardcode/100;
                                    $damount = $subtotal*$drate;
                                    $tax += $cartItem['tax']*$cartItem['quantity'];
                                    $shipping += $cartItem['shipping']*$cartItem['quantity'];
                                    $totalcost =$subtotal+$tax+$shipping-$damount;
                                    ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php if(Auth::user()->balance>=$totalcost): ?>

                                    <label class="payment_option" >
                                        <input type="radio" id="" name="payment_option" value="wallet" >
                                        <span>
                                            <img src="<?php echo e(asset('frontend/images/icons/cards/wallet.png')); ?>" class="img-fluid">
                                        </span>
                                    </label>
                                    <?php endif; ?>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>

                    <div class="row align-items-center pt-4">
                        <div class="col-6">
                            <a href="<?php echo e(route('home')); ?>" class="link link--style-3">
                                <i class="la la-mail-reply"></i>
                                <?php echo e(__('Return to home')); ?>

                            </a>
                        </div>
                        <div class="col-6 text-right">
                            <button type="submit" class="btn btn-styled btn-base-1"><?php echo e(__('Complete Order')); ?></button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-lg-4 ml-lg-auto">
                <?php echo $__env->make('frontend.partials.cart_summary', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>
    </div>
</section>

    <div style="width: 90%; margin: 0 auto;"><a target="_blank" href="https://www.sslcommerz.com/" title="SSLCommerz"><img style="width:100%;height:auto" src="https://securepay.sslcommerz.com/public/image/SSLCommerz-Pay-With-logo-All-Size-03.png"></a></div>


<script type="text/javascript">
    function use_wallet(){
        $('input[name=payment_option]').val('wallet');
        $('#checkout-form').submit();
    }
</script>
<?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/partials/payment_select.blade.php ENDPATH**/ ?>