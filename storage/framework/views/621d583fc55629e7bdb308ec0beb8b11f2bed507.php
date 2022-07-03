<?php $__env->startSection('title'); ?>
    <?php if(isset($category_id)): ?>
       <?php echo e(\App\Models\Category::find($category_id)->name); ?> | Product Listing
    <?php endif; ?>
    <?php if(isset($subcategory_id)): ?>
        <?php echo e(\App\Models\SubCategory::find($subcategory_id)->name); ?> | Product Listing
    <?php endif; ?>
    <?php if(isset($subsubcategory_id)): ?>
        <?php echo e(\App\Models\SubSubCategory::find($subsubcategory_id)->name); ?> | Product Listing
    <?php endif; ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col">
                    <ul class="breadcrumb">
                        <li><a href="<?php echo e(route('home')); ?>"><?php echo e(__('Home')); ?></a></li>
                        <li><a href="<?php echo e(route('products')); ?>"><?php echo e(__('All Categories')); ?></a></li>
                        <?php if(isset($category_id)): ?>
                            <li class="active"><a href="<?php echo e(route('products.category', $category_id)); ?>"><?php echo e(\App\Models\Category::find($category_id)->name); ?></a></li>
                        <?php endif; ?>
                        <?php if(isset($subcategory_id)): ?>
                            <li ><a href="<?php echo e(route('products.category', \App\Models\SubCategory::find($subcategory_id)->category->id)); ?>"><?php echo e(\App\Models\SubCategory::find($subcategory_id)->category->name); ?></a></li>
                            <li class="active"><a href="<?php echo e(route('products.subcategory', $subcategory_id)); ?>"><?php echo e(\App\Models\SubCategory::find($subcategory_id)->name); ?></a></li>
                        <?php endif; ?>
                        <?php if(isset($subsubcategory_id)): ?>
                            <li ><a href="<?php echo e(route('products.category', \App\Models\SubSubCategory::find($subsubcategory_id)->subcategory->category->id)); ?>"><?php echo e(\App\Models\SubSubCategory::find($subsubcategory_id)->subcategory->category->name); ?></a></li>
                            <li ><a href="<?php echo e(route('products.subcategory', \App\Models\SubsubCategory::find($subsubcategory_id)->subcategory->id)); ?>"><?php echo e(\App\Models\SubsubCategory::find($subsubcategory_id)->subcategory->name); ?></a></li>
                            <li class="active"><a href="<?php echo e(route('products.subsubcategory', $subsubcategory_id)); ?>"><?php echo e(\App\Models\SubSubCategory::find($subsubcategory_id)->name); ?></a></li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <section class="gry-bg py-4">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 d-none d-xl-block">

                    <div class="bg-white sidebar-box mb-3">
                        <div class="box-title text-center">
                            <?php echo e(__('Categories')); ?>

                        </div>
                        <div class="box-content">
                            <div class="category-accordion">
                                <?php $__currentLoopData = \App\Models\Category::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="single-category">
                                        <button class="btn w-100 category-name collapsed" type="button" data-toggle="collapse" data-target="#category-<?php echo e($key); ?>" aria-expanded="true">
                                           <a href="<?php echo e(route('products.category', $category->id)); ?>"> <?php echo e(__($category->name)); ?></a>
                                        </button>

                                        <div id="category-<?php echo e($key); ?>" class="collapse">
                                            <?php $__currentLoopData = $category->subcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key2 => $subcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div class="single-sub-category">
                                                    <button class="btn w-100 sub-category-name" type="button" data-toggle="collapse" data-target="#subCategory-<?php echo e($key); ?>-<?php echo e($key2); ?>" aria-expanded="true">
                                                        <?php echo e(__($subcategory->name)); ?>

                                                    </button>
                                                    <div id="subCategory-<?php echo e($key); ?>-<?php echo e($key2); ?>" class="collapse">
                                                        <ul class="sub-sub-category-list">
                                                            <?php $__currentLoopData = $subcategory->subsubcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key3 => $subsubcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <li><a href="<?php echo e(route('products.subsubcategory', $subsubcategory->id)); ?>"><?php echo e(__($subsubcategory->name)); ?></a></li>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        </ul>
                                                    </div>
                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white sidebar-box mb-3">
                        <div class="box-title text-center">
                            <?php echo e(__('Price range')); ?>

                        </div>
                        <div class="box-content">
                            <div class="range-slider-wrapper mt-3">
                                <!-- Range slider container -->
                                <div id="input-slider-range" data-range-value-min="<?php echo e(filter_products(\App\Models\Product::all())->min('unit_price')); ?>" data-range-value-max="<?php echo e(filter_products(\App\Models\Product::all())->max('unit_price')); ?>"></div>

                                <!-- Range slider values -->
                                <div class="row">
                                    <div class="col-6">
                                        <span class="range-slider-value value-low"
                                            <?php if(isset($min_price)): ?>
                                                data-range-value-low="<?php echo e($min_price); ?>"
                                            <?php elseif($products->min('unit_price') > 0): ?>
                                                data-range-value-low="<?php echo e($products->min('unit_price')); ?>"
                                            <?php else: ?>
                                                data-range-value-low="0"
                                            <?php endif; ?>
                                            id="input-slider-range-value-low">
                                    </div>

                                    <div class="col-6 text-right">
                                        <span class="range-slider-value value-high"
                                            <?php if(isset($max_price)): ?>
                                                data-range-value-high="<?php echo e($max_price); ?>"
                                            <?php elseif($products->max('unit_price') > 0): ?>
                                                data-range-value-high="<?php echo e($products->max('unit_price')); ?>"
                                            <?php else: ?>
                                                data-range-value-high="0"
                                            <?php endif; ?>
                                            id="input-slider-range-value-high">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9">
                    <!-- <div class="bg-white"> -->
                        <div class="brands-bar row no-gutters pb-3 bg-white p-3">
                            <div class="col-11">
                                <div class="brands-collapse-box" id="brands-collapse-box">
                                    <ul class="inline-links">
                                        <?php
                                            $brands = array();
                                        ?>
                                        <?php if(isset($subsubcategory_id)): ?>
                                            <?php
                                                foreach (json_decode(\App\Models\SubSubCategory::find($subsubcategory_id)->brands) as $brand) {
                                                    if(!in_array($brand, $brands)){
                                                        array_push($brands, $brand);
                                                    }
                                                }
                                            ?>
                                        <?php elseif(isset($subcategory_id)): ?>
                                            <?php $__currentLoopData = \App\Models\SubCategory::find($subcategory_id)->subsubcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $subsubcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php
                                                    foreach (json_decode($subsubcategory->brands) as $brand) {
                                                        if(!in_array($brand, $brands)){
                                                            array_push($brands, $brand);
                                                        }
                                                    }
                                                ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php elseif(isset($category_id)): ?>
                                            <?php $__currentLoopData = \App\Models\Category::find($category_id)->subcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $subcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php $__currentLoopData = $subcategory->subsubcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $subsubcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php
                                                        foreach (json_decode($subsubcategory->brands) as $brand) {
                                                            if(!in_array($brand, $brands)){
                                                                array_push($brands, $brand);
                                                            }
                                                        }
                                                    ?>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php else: ?>
                                            <?php
                                                foreach (\App\Models\Brand::all() as $key => $brand){
                                                    if(!in_array($brand->id, $brands)){
                                                        array_push($brands, $brand->id);
                                                    }
                                                }
                                            ?>
                                        <?php endif; ?>

                                        <?php $__currentLoopData = $brands; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $id): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if(\App\Models\Brand::find($id) != null): ?>
                                                <li><a href="<?php echo e(route('products.brand', $id)); ?>"><img src="<?php echo e(asset(\App\Models\Brand::find($id)->logo)); ?>" alt="" class="img-fluid"></a></li>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-1">
                                <button type="button" name="button" onclick="morebrands(this)" class="more-brands-btn">
                                    <i class="fa fa-plus"></i>
                                    <span class="d-none d-md-inline-block"><?php echo e(__('More')); ?></span>
                                </button>
                            </div>
                        </div>
                        <form class="" id="search-form" action="<?php echo e(route('search')); ?>" method="GET">
                            <?php if(isset($category_id)): ?>
                                <input type="hidden" name="category_id" value="<?php echo e($category_id); ?>">
                            <?php endif; ?>
                            <?php if(isset($subcategory_id)): ?>
                                <input type="hidden" name="subcategory_id" value="<?php echo e($subcategory_id); ?>">
                            <?php endif; ?>
                            <?php if(isset($subsubcategory_id)): ?>
                                <input type="hidden" name="subsubcategory_id" value="<?php echo e($subsubcategory_id); ?>">
                            <?php endif; ?>

                            <div class="sort-by-bar row no-gutters bg-white mb-3 px-3">
                                <div class="col-lg-4 col-md-5">
                                    <div class="sort-by-box">
                                        <div class="form-group">
                                            <label><?php echo e(__('Search')); ?></label>
                                            <div class="search-widget">
                                                <input class="form-control input-lg" type="text" name="q" placeholder="<?php echo e(__('Search products')); ?>" <?php if(isset($query)): ?> value="<?php echo e($query); ?>" <?php endif; ?>>
                                                <button type="submit" class="btn-inner">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 offset-lg-1">
                                    <div class="row no-gutters">
                                        <div class="col-4">
                                            <div class="sort-by-box px-1">
                                                <div class="form-group">
                                                    <label><?php echo e(__('Sort by')); ?></label>
                                                    <select class="form-control sortSelect" data-minimum-results-for-search="Infinity" name="sort_by" onchange="filter()">
                                                        <option value="1" <?php if(isset($sort_by)): ?> <?php if($sort_by == '1'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Newest')); ?></option>
                                                        <option value="2" <?php if(isset($sort_by)): ?> <?php if($sort_by == '2'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Oldest')); ?></option>
                                                        <option value="3" <?php if(isset($sort_by)): ?> <?php if($sort_by == '3'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Price low to high')); ?></option>
                                                        <option value="4" <?php if(isset($sort_by)): ?> <?php if($sort_by == '4'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Price high to low')); ?></option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="sort-by-box px-1">
                                                <div class="form-group">
                                                    <label><?php echo e(__('Brands')); ?></label>
                                                    <select class="form-control sortSelect" data-placeholder="<?php echo e(__('All Brands')); ?>" name="brand_id" onchange="filter()">
                                                        <option value=""><?php echo e(__('All Brands')); ?></option>
                                                        <?php $__currentLoopData = $brands; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $id): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <?php if(\App\Models\Brand::find($id) != null): ?>
                                                                <option value="<?php echo e($id); ?>" <?php if(isset($brand_id)): ?> <?php if($brand_id == $id): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(\App\Models\Brand::find($id)->name); ?></option>
                                                            <?php endif; ?>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="min_price" value="">
                            <input type="hidden" name="max_price" value="">
                        </form>
                        <!-- <hr class=""> -->
                        <div class="products-box-bar p-3 bg-white">
                            <div class="row">
                                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="col-lg-4 col-12">
                                        <div class="product-card-1 mb-3">
                                            <figure class="product-image-container">
                                                <a href="<?php echo e(route('product', $product->slug)); ?>" class="product-image d-block" style="background-image:url('<?php echo e(asset($product->thumbnail_img)); ?>');">
                                                </a>
                                                <button class="btn-quickview" onclick="showAddToCartModal(<?php echo e($product->id); ?>)"><i class="la la-eye"></i></button>
                                                <?php if(strtotime($product->created_at) > strtotime('-10 day')): ?>
                                                    <span class="product-label label-hot"><?php echo e(__('New')); ?></span>
                                                <?php endif; ?>
                                            </figure>
                                            <div class="product-details text-center">
                                                <h2 class="product-title text-truncate-2">
                                                    <a href="<?php echo e(route('product', $product->slug)); ?>"><?php echo e(__($product->name)); ?></a>
                                                </h2>
                                                <div class="price-box">
                                                    <?php if(home_base_price($product->id) != home_discounted_base_price($product->id)): ?>
                                                        <span class="old-product-price strong-300"><?php echo e(home_base_price($product->id)); ?></span>
                                                    <?php endif; ?>
                                                    <span class="product-price strong-300"><strong><?php echo e(home_discounted_base_price($product->id)); ?></strong></span>
                                                </div><!-- End .price-box -->

                                                <div class="product-card-1-action">
                                                    <button class="paction add-wishlist" title="Add to Wishlist" onclick="addToWishList(<?php echo e($product->id); ?>)">
                                                        <i class="la la-heart-o"></i>
                                                    </button>

                                                    <button type="button" class="paction add-cart btn btn-base-1 btn-circle btn-icon-left" onclick="showAddToCartModal(<?php echo e($product->id); ?>)">
                                                        <i class="fa la la-shopping-cart"></i><?php echo e(__('Add to cart')); ?>

                                                    </button>

                                                    <button class="paction add-compare" title="Add to Compare" onclick="addToCompare(<?php echo e($product->id); ?>)">
                                                        <i class="la la-refresh"></i>
                                                    </button>
                                                </div><!-- End .product-action -->
                                            </div><!-- End .product-details -->
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                        <div class="products-pagination bg-white p-3">
                            <nav aria-label="Center aligned pagination">
                                <ul class="pagination justify-content-center">
                                    <?php echo e($products->links()); ?>

                                </ul>
                            </nav>
                        </div>

                    <!-- </div> -->
                </div>
            </div>
        </div>
    </section>

    <?php if(isset($category_id)): ?>
        <?php
        $category = \App\Models\Category::find($category_id);
        ?>
        <?php if(isset($category->description)): ?>
            <section class="gry-bg py-4">
            <div class="container">
                <div class="products-box-bar p-3 bg-white">
                    <p>
                        <?php echo $category->description; ?>

                    </p>
                </div>
            </div>
            </section>
        <?php endif; ?>
    <?php endif; ?>

    <?php if(isset($subcategory_id)): ?>
        <?php
        $category = \App\Models\SubCategory::find($subcategory_id);

        ?>
        <?php if(isset($category->description)): ?>
            <section class="gry-bg py-4">
                <div class="container">
                    <div class="products-box-bar p-3 bg-white">
                        <p>
                            <?php echo $category->description; ?>

                        </p>
                    </div>
                </div>
            </section>
        <?php endif; ?>
    <?php endif; ?>

    <?php if(isset($subsubcategory_id)): ?>
        <?php
            $category = \App\Models\SubSubCategory::find($subsubcategory_id);
        ?>
        <?php if(isset($category->description)): ?>
            <section class="gry-bg py-4">
                <div class="container">
                    <div class="products-box-bar p-3 bg-white">
                        <p>
                            <?php echo $category->description; ?>

                        </p>
                    </div>
                </div>
            </section>
        <?php endif; ?>
    <?php endif; ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
        function filter(){
            $('#search-form').submit();
        }
        function rangefilter(arg){
            $('input[name=min_price]').val(arg[0]);
            $('input[name=max_price]').val(arg[1]);
            filter();
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/product_listing.blade.php ENDPATH**/ ?>