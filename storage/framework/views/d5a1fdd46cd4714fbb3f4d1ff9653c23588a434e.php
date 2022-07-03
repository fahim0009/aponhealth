<?php
    $generalsetting = \App\Models\GeneralSetting::first();
?>
<section class="header">
    <div style="width: 95%; margin: 0 auto;">
        <div class="header-portion">

                <div class="brand">
                    <a href="<?php echo e(route('home')); ?>">
                        <?php if($generalsetting->logo != null): ?>
                        <img src="<?php echo e(asset($generalsetting->logo)); ?>" class="" alt="Apon Health">
                        <?php else: ?>
                            <img src="<?php echo e(asset('frontend/images/logo.png')); ?>" class="" alt="Apon Health">
                        <?php endif; ?>
                    </a>
                    

                </div>

                <div class="search-box flex-grow-1">
                    <form action="<?php echo e(route('search')); ?>" method="GET">
                        <div class="d-flex position-relative mt-3">
                            
                            <div class="w-100">
                                <input type="text" aria-label="Search" id="search" name="q" class="w-100" placeholder="<?php echo e(__('I am shopping for...')); ?>" autocomplete="off">
                            </div>
                            <div class="form-group category-select d-xl-block">
                                <select class="form-control selectpicker select-normal" name="category_id">
                                    <option value=""><?php echo e(__('All Categories')); ?></option>
                                    <?php $__currentLoopData = \App\Models\Category::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($category->id); ?>"
                                        <?php if(isset($category_id)): ?>
                                            <?php if($category_id == $category->id): ?>
                                                selected
                                            <?php endif; ?>
                                        <?php endif; ?>
                                        ><?php echo e(__($category->name)); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                            <button class="d-lg-block" type="submit">
                                <i class="la la-search la-flip-horizontal"></i>
                            </button>
                            <div class="typed-search-box d-none">
                                <div class="search-preloader">
                                    <div class="loader"><div></div><div></div><div></div></div>
                                </div>
                                <div class="search-nothing d-none">

                                </div>
                                <div id="search-content">

                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            <div class="buttons_link">
              <a href="<?php echo e(route('upload-prescription')); ?>"><img src="<?php echo e(asset('frontend/images/images/upload.png')); ?>" class="img-fluid"></a>
              <?php if(auth()->guard()->check()): ?>
               
               <?php else: ?>
               <a href="<?php echo e(route('user.registration')); ?>"><img src="<?php echo e(asset('frontend/images/images/member.jpg')); ?>" class="img-fluid"></a>
               <?php endif; ?>
               <?php if(auth()->guard()->check()): ?>
               <a href="<?php echo e(route('dashboard')); ?>"><img src="<?php echo e(asset('frontend/images/images/dashboard.png')); ?>" class="img-fluid"></a>
               <?php else: ?>
               <a href="<?php echo e(route('user.login')); ?>"><img src="<?php echo e(asset('frontend/images/images/Screenshot_1.png')); ?>"></a>
               <?php endif; ?>
               
            </div>
            <div class="links">

                

                <div class="d-lg-inline-block mobilecart" data-hover="dropdown">
                    <div class="nav-cart-box dropdown" id="cart_items">
                        <a href="" class="nav-box-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="<?php echo e(asset('frontend/images/images/shopping-cart.png')); ?>">
                            <?php if(Session::has('cart')): ?>
                            <div class="cartitem">
                                <?php echo e(count(Session::get('cart'))); ?>

                             </div>

                            <?php else: ?>
                            <div class="cartitem">
                                0
                             </div>

                            <?php endif; ?>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right px-0">
                            <li>
                                <div class="dropdown-cart px-0">
                                    <?php if(Session::has('cart')): ?>
                                        <?php if(count($cart = Session::get('cart')) > 0): ?>
                                            <div class="dc-header">
                                                <h3 class="heading heading-6 strong-700"><?php echo e(__('Cart Items')); ?></h3>
                                            </div>
                                            <div class="dropdown-cart-items c-scrollbar">
                                                <?php
                                                    $total = 0;
                                                ?>
                                                <?php $__currentLoopData = $cart; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $cartItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php
                                                        $product = \App\Models\Product::find($cartItem['id']);
                                                        $total = $total + $cartItem['price']*$cartItem['quantity'];
                                                    ?>
                                                    <div class="dc-item">
                                                        <div class="d-flex align-items-center">
                                                            <div class="dc-image">
                                                                <a href="<?php echo e(route('product', $product->slug)); ?>">
                                                                    <img src="<?php echo e(asset($product->thumbnail_img)); ?>" class="img-fluid" alt="">
                                                                </a>
                                                            </div>
                                                            <div class="dc-content">
                                                                <span class="d-block dc-product-name text-capitalize strong-600 mb-1">
                                                                    <a href="<?php echo e(route('product', $product->slug)); ?>">
                                                                        <?php echo e(__($product->name)); ?>

                                                                    </a>
                                                                </span>

                                                                <span class="dc-quantity">x<?php echo e($cartItem['quantity']); ?></span>
                                                                <span class="dc-price"><?php echo e(single_price($cartItem['price']*$cartItem['quantity'])); ?></span>
                                                            </div>
                                                            <div class="dc-actions">
                                                                <button onclick="removeFromCart(<?php echo e($key); ?>)">
                                                                    <i class="la la-close"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </div>
                                            <div class="dc-item py-3">
                                                <span class="subtotal-text"><?php echo e(__('Subtotal')); ?></span>
                                                <span class="subtotal-amount"><?php echo e(single_price($total)); ?></span>
                                            </div>
                                            <div class="py-2 text-center dc-btn">
                                                <ul class="inline-links inline-links--style-3">
                                                    <li class="pr-3">
                                                        <a href="<?php echo e(route('cart')); ?>" class="link link--style-1 text-capitalize btn btn-base-1 px-3 py-1">
                                                            <i class="la la-shopping-cart"></i> <?php echo e(__('View cart')); ?>

                                                        </a>
                                                    </li>
                                                    <li>
                                                    <?php if(Auth::check()): ?>
                                                    <a href="<?php echo e(route('checkout.shipping_info')); ?>" class="link link--style-1 text-capitalize btn btn-base-1 px-3 py-1 light-text"><i class="la la-mail-forward"></i> <?php echo e(__('Checkout')); ?></a>
                                                    <?php else: ?>
                                                    <a href="<?php echo e(route('cart.login')); ?>" class="link link--style-1 text-capitalize btn btn-base-1 px-3 py-1 light-text"><i class="la la-mail-forward"></i> <?php echo e(__('Checkout')); ?></a>
                                                    <?php endif; ?>
                                                    </li>
                                                </ul>
                                            </div>
                                        <?php else: ?>
                                            <div class="dc-header">
                                                <h3 class="heading heading-6 strong-700"><?php echo e(__('Your Cart is empty')); ?></h3>
                                            </div>
                                        <?php endif; ?>
                                    <?php else: ?>
                                        <div class="dc-header">
                                            <h3 class="heading heading-6 strong-700"><?php echo e(__('Your Cart is empty')); ?></h3>
                                        </div>
                                    <?php endif; ?>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</section>



<?php /**PATH E:\xampp7.4\htdocs\laravel\apon_health\apon_ecom\resources\views/frontend/inc/nav.blade.php ENDPATH**/ ?>