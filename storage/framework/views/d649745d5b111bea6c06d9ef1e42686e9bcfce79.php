<?php $__env->startSection('title'); ?>
    Apon Health - Online Pharmacy - Bangladesh
<?php $__env->stopSection(); ?>
<?php $__env->startSection('css'); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

<!-- Slider main container -->
<div class="swiper-container mt--1">
    <!-- Additional required wrapper -->
    <!-- If we need navigation buttons -->
    <div class="control">
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
    <div class="swiper-wrapper">
        <!-- Slides -->
        <?php $__currentLoopData = \App\Models\Slider::where('published', 1)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="swiper-slide">
                <img src="<?php echo e(asset($slider->photo)); ?>" class="img-fluid d-block w-100 h-100">
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
    <!-- If we need pagination -->
    <div class="swiper-pagination"></div>
</div>
<section class="instruction">
    <div class="container">
        <div class="row controlInstruction">
            <div class="col-lg-4">
                <a href="<?php echo e(route('regularmedication.index')); ?>">
                    <div class="infoBox">
                        <div class="tag">
                            upto 10% % OFF + cashback
                        </div>
                        <img src="<?php echo e(asset('frontend/images/images/prescription.png')); ?>" class="img-fluid">
                        <div class="title">আপনি কি নিয়মিত ঔষধ সেবন করেন?</div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4">
                <a href="">
                    <div class="infoBox">
                        <div class="tag">
                            upto 10% % OFF + cashback
                        </div>
                        <img src="<?php echo e(asset('frontend/images/images/telephone.png')); ?>" class="img-fluid">
                        <div class="title">Call to order <small>(10am - 10pm)</small></div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4">
                <a href="<?php echo e(route('products')); ?>">
                    <div class="infoBox">
                        <div class="tag">
                            upto 10% % OFF + cashback
                        </div>
                        <img src="<?php echo e(asset('frontend/images/images/health-insurance.png')); ?>" class="img-fluid">
                        <div class="title">HealthCare Products</div>
                    </div>
                </a>
            </div>

        </div>
    </div>
</section>

<section class="howTo">
    <div class="container">
        <div class="row">
            <div class="col-md-6 my-3 d-flex flex-column justify-content-center">
                <h3 class='title'>আপন হেল্‌থ থেকে অর্ডার কিভাবে করবেন?</h3>
                <ul class="process">
                    <li>
                        <div class="marker">১</div>প্রেস্ক্রিপশনের ছবি আপলোড করুন অথবা ঔষধ সার্চ করে কিনুন।
                    </li>
                    <li>
                        <div class="marker">২</div>আমাদের 'A Grade Pharmacist' আপনাকে ফোন করে অর্ডার কনফার্ম করবেন।
                    </li>
                    <li>
                        <div class="marker">৩</div>১৮-৪৮ ঘন্টার মধ্য আপনার ডেলিভারি বুঝে নিন।
                    </li>
                </ul>
                <h3 class="title">ডাউনলোড করুন আপন হেল্‌থ এপ, আর উপভোগ করুন আকর্ষণীয় মূল্যছাড়।</h3>
                <div class="w-100 mt-3 d-flex justify-content-center">
                    <a href=" " target="_blank">
                        <img class="img-fluid mx-1" src="<?php echo e(asset('frontend/images/images/google_play.png')); ?>">
                    </a>
                    <a href="" target="_blank">
                        <img class="img-fluid mx-1" src="<?php echo e(asset('frontend/images/images/apple_store.png')); ?>" />
                    </a>
                </div>
            </div>
            <div class="col-lg-6">
                <iframe width="100%" height="350" src="https://www.youtube.com/embed/NMzJScUP5uo"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
            </div>
        </div>
    </div>
</section>

<!-- Medicine -->

<section class="productSlider mb-4">
    <div class="coating">
        <div class="container">
            <h3 class="section-title purple"><span class="iconify" data-icon="la:capsules"
                    data-inline="false"></span> Medicine <a href='<?php echo e(route('products.category', 25)); ?>'>View all</a></h3>
            <div class="grid-x grid-margin-x slider">
                <?php $__currentLoopData = filter_products(\App\Models\Product::where('category_id', 25))->limit(10)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="cell auto slides">
                    <div class="card text-center w-97">
                        <div class="card-body p-0 shadow-sm">
                            <div class="card-image">
                                <a href="<?php echo e(route('product', $related_product->slug)); ?>" class="d-block" tabindex="0">
                                    <img src="<?php echo e(asset($related_product->thumbnail_img)); ?>"
                                        height="200px" width="100%" alt="">
                                </a>
                            </div>
                            <div style="height: 48px">
                                <div style="width: 100%; padding: 0 11px; height: 25px;">
                                    <span class="float-left"><?php echo e(home_discounted_base_price($related_product->id)); ?></span>
                                    <p class="float-right" style="color: red"><?php if(percentage($related_product->id)>0): ?><?php echo e(percentage($related_product->id)); ?>% OFF <?php endif; ?></p>
                                </div>
                                
                            </div>
                            <a href="<?php echo e(route('product', $related_product->slug)); ?>" tabindex="0"><?php echo e(__($related_product->name)); ?></a>
                            <div class="addCart">
                                <span class="iconify" data-icon="ei:heart" data-inline="false" onclick="addToWishList(<?php echo e($related_product->id); ?>)"></span>
                                <button type="button" class="addTocart" onclick="showAddToCartModal(<?php echo e($related_product->id); ?>)">
                                    <span class="iconify mr-1" data-icon="clarity:shopping-cart-line"
                                        data-inline="false"></span> Add to cart
                                </button>
                                <span class="iconify" data-icon="icons8:refresh" data-inline="false" onclick="addToCompare(<?php echo e($related_product->id); ?>)"></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

        </div>
    </div>
</section>
<!-- Unani Medicine -->

<section class="productSlider mb-4">
    <div class="coating">
        <div class="container">
            <h3 class="section-title orange">
                <span class="iconify" data-icon="bx:bxs-capsule" data-inline="false"></span> Unani Medicine
                <a href="<?php echo e(route('products.category', 26)); ?>">View all</a>
            </h3>
            <div class="grid-x grid-margin-x slider">
                <?php $__currentLoopData = filter_products(\App\Models\Product::where('category_id', 26))->limit(10)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="cell auto slides">
                        <div class="card text-center w-97">
                            <div class="card-body p-0 shadow-sm">
                                <div class="card-image">
                                    <a href="<?php echo e(route('product', $related_product->slug)); ?>" class="d-block" tabindex="0">
                                        <img src="<?php echo e(asset($related_product->thumbnail_img)); ?>"
                                            height="200px" width="100%" alt="">
                                    </a>
                                </div>
                                <div style="height: 48px">
                                    <div style="width: 100%; padding: 0 11px; height: 25px;">
                                        <span class="float-left"><?php echo e(home_discounted_base_price($related_product->id)); ?></span>
                                        <p class="float-right" style="color: red"><?php if(percentage($related_product->id)>0): ?><?php echo e(percentage($related_product->id)); ?>% OFF <?php endif; ?></p>
                                    </div>
                                    <?php if(home_discounted_base_price($related_product->id)!=home_price($related_product->id)): ?>
                                    <del class="product-price-old float-left" style="margin-top: -4px; padding: 0 11px; color: #893030;"><?php echo e(home_price($related_product->id)); ?></del>
                                    <?php endif; ?>
                                </div>
                                <a href="<?php echo e(route('product', $related_product->slug)); ?>" tabindex="0"><?php echo e(__($related_product->name)); ?></a>
                                <div class="addCart">
                                    <span class="iconify" data-icon="ei:heart" data-inline="false" onclick="addToWishList(<?php echo e($related_product->id); ?>)"></span>
                                    <button type="button" class="addTocart" onclick="showAddToCartModal(<?php echo e($related_product->id); ?>)">
                                        <span class="iconify mr-1" data-icon="clarity:shopping-cart-line"
                                            data-inline="false"></span> Add to cart
                                    </button>
                                    <span class="iconify" data-icon="icons8:refresh" data-inline="false" onclick="addToCompare(<?php echo e($related_product->id); ?>)"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

        </div>
    </div>
</section>



<!-- Ayurvedic Medicine -->

<section class="productSlider mb-4">
    <div class="coating">
        <div class="container">
            <h3 class="section-title lightblue"><span class="iconify" data-icon="fontisto:injection-syringe"
                    data-inline="false"></span> Ayurvedic Medicine <a href='<?php echo e(route('products.category', 27)); ?>'>View all</a></h3>
            <div class="grid-x grid-margin-x slider">
                <?php $__currentLoopData = filter_products(\App\Models\Product::where('category_id', 27))->limit(10)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="cell auto slides">
                    <div class="card text-center w-97">
                        <div class="card-body p-0 shadow-sm">
                            <div class="card-image">
                                <a href="<?php echo e(route('product', $related_product->slug)); ?>" class="d-block" tabindex="0">
                                    <img src="<?php echo e(asset($related_product->thumbnail_img)); ?>"
                                        height="200px" width="100%" alt="">
                                </a>
                            </div>
                            <div style="height: 48px">
                                <div style="width: 100%; padding: 0 11px; height: 25px;">
                                    <span class="float-left"><?php echo e(home_discounted_base_price($related_product->id)); ?></span>
                                    <p class="float-right" style="color: red"><?php if(percentage($related_product->id)>0): ?><?php echo e(percentage($related_product->id)); ?>% OFF <?php endif; ?></p>
                                </div>
                                <?php if(home_discounted_base_price($related_product->id)!=home_price($related_product->id)): ?>
                                <del class="product-price-old float-left" style="margin-top: -4px; padding: 0 11px; color: #893030;"><?php echo e(home_price($related_product->id)); ?></del>
                                <?php endif; ?>
                            </div>
                            <a href="<?php echo e(route('product', $related_product->slug)); ?>" tabindex="0"><?php echo e(__($related_product->name)); ?></a>
                            <div class="addCart">
                                <span class="iconify" data-icon="ei:heart" data-inline="false" onclick="addToWishList(<?php echo e($related_product->id); ?>)"></span>
                                <button type="button" class="addTocart" onclick="showAddToCartModal(<?php echo e($related_product->id); ?>)">
                                    <span class="iconify mr-1" data-icon="clarity:shopping-cart-line"
                                        data-inline="false"></span> Add to cart
                                </button>
                                <span class="iconify" data-icon="icons8:refresh" data-inline="false" onclick="addToCompare(<?php echo e($related_product->id); ?>)"></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

        </div>
    </div>
</section>

<!-- Covid-19 Special -->

<section class="productSlider mb-4">
    <div class="coating">
        <div class="container">
            <h3 class="section-title pink"><span class="iconify" data-icon="medical-icon:i-chapel"
                    data-inline="false"></span> Covid-19 Special <a href="<?php echo e(route('products.category', 28)); ?>">View all</a></h3>
            <div class="grid-x grid-margin-x slider">
                <?php $__currentLoopData = filter_products(\App\Models\Product::where('category_id', 28))->limit(10)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="cell auto slides">
                    <div class="card text-center w-97">
                        <div class="card-body p-0 shadow-sm">
                            <div class="card-image">
                                <a href="<?php echo e(route('product', $related_product->slug)); ?>" class="d-block" tabindex="0">
                                    <img src="<?php echo e(asset($related_product->thumbnail_img)); ?>"
                                        height="200px" width="100%" alt="">
                                </a>
                            </div>
                            <div style="height: 48px">
                                <div style="width: 100%; padding: 0 11px; height: 25px;">
                                    <span class="float-left"><?php echo e(home_discounted_base_price($related_product->id)); ?></span>
                                    <p class="float-right" style="color: red"><?php if(percentage($related_product->id)>0): ?><?php echo e(percentage($related_product->id)); ?>% OFF <?php endif; ?></p>
                                </div>
                                <?php if(home_discounted_base_price($related_product->id)!=home_price($related_product->id)): ?>
                                <del class="product-price-old float-left" style="margin-top: -4px; padding: 0 11px; color: #893030;"><?php echo e(home_price($related_product->id)); ?></del>
                                <?php endif; ?>
                            </div>
                            <a href="<?php echo e(route('product', $related_product->slug)); ?>" tabindex="0"><?php echo e(__($related_product->name)); ?></a>
                            <div class="addCart">
                                <span class="iconify" data-icon="ei:heart" data-inline="false" onclick="addToWishList(<?php echo e($related_product->id); ?>)"></span>
                                <button type="button" class="addTocart" onclick="showAddToCartModal(<?php echo e($related_product->id); ?>)">
                                    <span class="iconify mr-1" data-icon="clarity:shopping-cart-line"
                                        data-inline="false"></span> Add to cart
                                </button>
                                <span class="iconify" data-icon="icons8:refresh" data-inline="false" onclick="addToCompare(<?php echo e($related_product->id); ?>)"></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

        </div>
    </div>
</section>
<!-- Women Care -->

<section class="productSlider mb-4">
    <div class="coating">
        <div class="container">
            <h3 class="section-title lightblue"><span class="iconify" data-icon="ic:sharp-sanitizer"
                    data-inline="false"></span> Women Care <a href="<?php echo e(route('products.category', 29)); ?>">View all</a></h3>
            <div class="grid-x grid-margin-x slider">
                <?php $__currentLoopData = filter_products(\App\Models\Product::where('category_id', 29))->limit(10)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="cell auto slides">
                    <div class="card text-center w-97">
                        <div class="card-body p-0 shadow-sm">
                            <div class="card-image">
                                <a href="<?php echo e(route('product', $related_product->slug)); ?>" class="d-block" tabindex="0">
                                    <img src="<?php echo e(asset($related_product->thumbnail_img)); ?>"
                                        height="200px" width="100%" alt="">
                                </a>
                            </div>

                            <div style="height: 48px">
                                <div style="width: 100%; padding: 0 11px; height: 25px;">
                                    <span class="float-left"><?php echo e(home_discounted_base_price($related_product->id)); ?></span>
                                    <p class="float-right" style="color: red"><?php if(percentage($related_product->id)>0): ?><?php echo e(percentage($related_product->id)); ?>% OFF <?php endif; ?></p>
                                </div>
                                <?php if(home_discounted_base_price($related_product->id)!=home_price($related_product->id)): ?>
                                <del class="product-price-old float-left" style="margin-top: -4px; padding: 0 11px; color: #893030;"><?php echo e(home_price($related_product->id)); ?></del>
                                <?php endif; ?>
                            </div>

                            <a href="<?php echo e(route('product', $related_product->slug)); ?>" tabindex="0"><?php echo e(__($related_product->name)); ?></a>
                            <div class="addCart">
                                <span class="iconify" data-icon="ei:heart" data-inline="false" onclick="addToWishList(<?php echo e($related_product->id); ?>)"></span>
                                <button type="button" class="addTocart" onclick="showAddToCartModal(<?php echo e($related_product->id); ?>)">
                                    <span class="iconify mr-1" data-icon="clarity:shopping-cart-line"
                                        data-inline="false"></span> Add to cart
                                </button>
                                <span class="iconify" data-icon="icons8:refresh" data-inline="false" onclick="addToCompare(<?php echo e($related_product->id); ?>)"></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

        </div>
    </div>
</section>
<!-- Supplements and Vitamins -->

<section class="productSlider mb-4">
    <div class="coating">
        <div class="container">
            <h3 class="section-title pink"><span class="iconify" data-icon="ic:sharp-sanitizer"
                    data-inline="false"></span> Supplements and Vitamins <a href="<?php echo e(route('products.category', 30)); ?>">View all</a></h3>
            <div class="grid-x grid-margin-x slider">
                <?php $__currentLoopData = filter_products(\App\Models\Product::where('category_id', 30))->limit(10)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="cell auto slides">
                    <div class="card text-center w-97">
                        <div class="card-body p-0 shadow-sm">
                            <div class="card-image">
                                <a href="<?php echo e(route('product', $related_product->slug)); ?>" class="d-block" tabindex="0">
                                    <img src="<?php echo e(asset($related_product->thumbnail_img)); ?>"
                                        height="200px" width="100%" alt="">
                                </a>
                            </div>
                            <div style="height: 48px">
                                <div style="width: 100%; padding: 0 11px; height: 25px;">
                                    <span class="float-left"><?php echo e(home_discounted_base_price($related_product->id)); ?></span>
                                    <p class="float-right" style="color: red"><?php if(percentage($related_product->id)>0): ?><?php echo e(percentage($related_product->id)); ?>% OFF <?php endif; ?></p>
                                </div>
                                <?php if(home_discounted_base_price($related_product->id)!=home_price($related_product->id)): ?>
                                <del class="product-price-old float-left" style="margin-top: -4px; padding: 0 11px; color: #893030;"><?php echo e(home_price($related_product->id)); ?></del>
                                <?php endif; ?>
                            </div>
                            <a href="<?php echo e(route('product', $related_product->slug)); ?>" tabindex="0"><?php echo e(__($related_product->name)); ?></a>
                            <div class="addCart">
                                <span class="iconify" data-icon="ei:heart" data-inline="false" onclick="addToWishList(<?php echo e($related_product->id); ?>)"></span>
                                <button type="button" class="addTocart" onclick="showAddToCartModal(<?php echo e($related_product->id); ?>)">
                                    <span class="iconify mr-1" data-icon="clarity:shopping-cart-line"
                                        data-inline="false"></span> Add to cart
                                </button>
                                <span class="iconify" data-icon="icons8:refresh" data-inline="false" onclick="addToCompare(<?php echo e($related_product->id); ?>)"></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

        </div>
    </div>
</section>

<!-- Baby and Mom care -->

<section class="productSlider mb-4">
    <div class="coating">
        <div class="container">
            <h3 class="section-title pink"><span class="iconify" data-icon="ic:sharp-sanitizer"
                    data-inline="false"></span> Baby and Mom care <a href="<?php echo e(route('products.category', 31)); ?>">View all</a></h3>
            <div class="grid-x grid-margin-x slider">
                <?php $__currentLoopData = filter_products(\App\Models\Product::where('category_id', 31))->limit(10)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="cell auto slides">
                    <div class="card text-center w-97">
                        <div class="card-body p-0 shadow-sm">
                            <div class="card-image">
                                <a href="<?php echo e(route('product', $related_product->slug)); ?>" class="d-block" tabindex="0">
                                    <img src="<?php echo e(asset($related_product->thumbnail_img)); ?>"
                                        height="200px" width="100%" alt="">
                                </a>
                            </div>
                            <div style="height: 48px">
                                <div style="width: 100%; padding: 0 11px; height: 25px;">
                                    <span class="float-left"><?php echo e(home_discounted_base_price($related_product->id)); ?></span>
                                    <p class="float-right" style="color: red"><?php if(percentage($related_product->id)>0): ?><?php echo e(percentage($related_product->id)); ?>% OFF <?php endif; ?></p>
                                </div>
                                <?php if(home_discounted_base_price($related_product->id)!=home_price($related_product->id)): ?>
                                <del class="product-price-old float-left" style="margin-top: -4px; padding: 0 11px; color: #893030;"><?php echo e(home_price($related_product->id)); ?></del>
                                <?php endif; ?>
                            </div>
                            <a href="<?php echo e(route('product', $related_product->slug)); ?>" tabindex="0"><?php echo e(__($related_product->name)); ?></a>
                            <div class="addCart">
                                <span class="iconify" data-icon="ei:heart" data-inline="false" onclick="addToWishList(<?php echo e($related_product->id); ?>)"></span>
                                <button type="button" class="addTocart" onclick="showAddToCartModal(<?php echo e($related_product->id); ?>)">
                                    <span class="iconify mr-1" data-icon="clarity:shopping-cart-line"
                                        data-inline="false"></span> Add to cart
                                </button>
                                <span class="iconify" data-icon="icons8:refresh" data-inline="false" onclick="addToCompare(<?php echo e($related_product->id); ?>)"></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

        </div>
    </div>
</section>

<!-- Devices -->

<section class="productSlider mb-4">
    <div class="coating">
        <div class="container">
            <h3 class="section-title purple"><span class="iconify" data-icon="ic:sharp-sanitizer"
                    data-inline="false"></span> Devices <a href="<?php echo e(route('products.category', 32)); ?>">View all</a></h3>
            <div class="grid-x grid-margin-x slider">
                <?php $__currentLoopData = filter_products(\App\Models\Product::where('category_id', 32))->limit(10)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="cell auto slides">
                    <div class="card text-center w-97">
                        <div class="card-body p-0 shadow-sm">
                            <div class="card-image">
                                <a href="<?php echo e(route('product', $related_product->slug)); ?>" class="d-block" tabindex="0">
                                    <img src="<?php echo e(asset($related_product->thumbnail_img)); ?>"
                                        height="200px" width="100%" alt="">
                                </a>
                            </div>
                            <div style="height: 48px">
                                <div style="width: 100%; padding: 0 11px; height: 25px;">
                                    <span class="float-left"><?php echo e(home_discounted_base_price($related_product->id)); ?></span>
                                    <p class="float-right" style="color: red"><?php if(percentage($related_product->id)>0): ?><?php echo e(percentage($related_product->id)); ?>% OFF <?php endif; ?></p>
                                </div>
                                <?php if(home_discounted_base_price($related_product->id)!=home_price($related_product->id)): ?>
                                <del class="product-price-old float-left" style="margin-top: -4px; padding: 0 11px; color: #893030;"><?php echo e(home_price($related_product->id)); ?></del>
                                <?php endif; ?>
                            </div>
                            <a href="<?php echo e(route('product', $related_product->slug)); ?>" tabindex="0"><?php echo e(__($related_product->name)); ?></a>
                            <div class="addCart">
                                <span class="iconify" data-icon="ei:heart" data-inline="false" onclick="addToWishList(<?php echo e($related_product->id); ?>)"></span>
                                <button type="button" class="addTocart" onclick="showAddToCartModal(<?php echo e($related_product->id); ?>)">
                                    <span class="iconify mr-1" data-icon="clarity:shopping-cart-line"
                                        data-inline="false"></span> Add to cart
                                </button>
                                <span class="iconify" data-icon="icons8:refresh" data-inline="false" onclick="addToCompare(<?php echo e($related_product->id); ?>)"></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

        </div>
    </div>
</section>


<!-- Sexual Wellness -->

<section class="productSlider mb-4">
    <div class="coating">
        <div class="container">
            <h3 class="section-title pink"><span class="iconify" data-icon="ic:sharp-sanitizer"
                    data-inline="false"></span> Sexual Wellness <a href="<?php echo e(route('products.category', 33)); ?>">View all</a></h3>
            <div class="grid-x grid-margin-x slider">
                <?php $__currentLoopData = filter_products(\App\Models\Product::where('category_id', 33))->limit(10)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $related_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="cell auto slides">
                    <div class="card text-center w-97">
                        <div class="card-body p-0 shadow-sm">
                            <div class="card-image">
                                <a href="<?php echo e(route('product', $related_product->slug)); ?>" class="d-block" tabindex="0">
                                    <img src="<?php echo e(asset($related_product->thumbnail_img)); ?>"
                                        height="200px" width="100%" alt="">
                                </a>
                            </div>
                            <div style="height: 48px">
                                <div style="width: 100%; padding: 0 11px; height: 25px;">
                                    <span class="float-left"><?php echo e(home_discounted_base_price($related_product->id)); ?></span>
                                    <p class="float-right" style="color: red"><?php if(percentage($related_product->id)>0): ?><?php echo e(percentage($related_product->id)); ?>% OFF <?php endif; ?></p>
                                </div>
                                <?php if(home_discounted_base_price($related_product->id)!=home_price($related_product->id)): ?>
                                <del class="product-price-old float-left" style="margin-top: -4px; padding: 0 11px; color: #893030;"><?php echo e(home_price($related_product->id)); ?></del>
                                <?php endif; ?>
                            </div>
                            <a href="<?php echo e(route('product', $related_product->slug)); ?>" tabindex="0"><?php echo e(__($related_product->name)); ?></a>
                            <div class="addCart">
                                <span class="iconify" data-icon="ei:heart" data-inline="false" onclick="addToWishList(<?php echo e($related_product->id); ?>)"></span>
                                <button type="button" class="addTocart" onclick="showAddToCartModal(<?php echo e($related_product->id); ?>)">
                                    <span class="iconify mr-1" data-icon="clarity:shopping-cart-line"
                                        data-inline="false"></span> Add to cart
                                </button>
                                <span class="iconify" data-icon="icons8:refresh" data-inline="false" onclick="addToCompare(<?php echo e($related_product->id); ?>)"></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>

        </div>
    </div>
</section>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
<script>
    const swiper = new Swiper('.swiper-container', {
        // Optional parameters
        direction: 'horizontal',
        autoplay: {
            delay: 5000,
        },
        loop: true,
        effect: 'fade',
        // If we need pagination
        pagination: {
            el: '.swiper-pagination',
            type: 'bullets',
            clickable: true

        },
        // Navigation arrows
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });

    $('.slider').slick({
        arrows: true,
        infinite: true,
        slidesToShow: 3,
        accessibility: true,
        autoplay: false,
        autoplaySpeed: 3000,
        prevArrow: "<span class='arrow prev'><i class='fa fa-angle-left'></i></span>",
        nextArrow: "<span class='arrow next'><i class='fa fa-angle-right'></i></span>",
        customPaging: function (slider, i) {
            /* ADDING CUSTOM PAGING
             Example
             return  return '<li>Something you want to insert</li>';
     */
        },
        responsive: [
            {
                breakpoint: 1920,
                settings: {
                    slidesToShow: 6,
                    slidesToScroll: 1,
                    infinite: true,
                    // dots: true
                }
            },
            {
                breakpoint: 1440,
                settings: {
                    slidesToShow: 6,
                    slidesToScroll: 1,
                    infinite: true,
                    // dots: true
                }
            },
            {
                breakpoint: 1025,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    infinite: true,
                    // dots: true
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 425,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 375,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },

        ]
    });
</script>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/index.blade.php ENDPATH**/ ?>