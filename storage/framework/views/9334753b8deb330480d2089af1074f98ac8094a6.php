
<?php $__env->startSection('content'); ?>
<div class="dashbaord-main">
    <?php if(Auth::user()->user_type == 'seller'): ?>
        <?php echo $__env->make('frontend.inc.seller_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php elseif(Auth::user()->user_type == 'customer'): ?>
        <?php echo $__env->make('frontend.inc.customer_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php elseif(Auth::user()->user_type == 'doctor'): ?>
        <?php echo $__env->make('frontend.inc.doctor_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
    <div class="rightSection">
        <div class="topbar">
            <div class="fold" onclick='foldSidebar();'>
                <span class="iconify" data-icon="eva:menu-fill"></span>
            </div>
            <!-- <img src="images/logo.png" class="mobile-menu-logo"> -->
            <div class="right-element">
                <div class="dropdown">
                    <a class="btn dropdown-toggle profile-manage" href="#" role="button" id="dropdownMenuLink"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <?php if(!empty(Auth::user()->avatar_original)): ?>
                        <img src="<?php echo e(asset(Auth::user()->avatar_original)); ?>" alt="">
                        <?php else: ?>
                            <img src="<?php echo e(asset('uploads/1.jpg')); ?>" alt="">
                        <?php endif; ?>
                    </a>

                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <a class="dropdown-item" href="<?php echo e(route('profile')); ?>"><span class="iconify"
                                data-icon="carbon:user-avatar"></span> Profile</a>
                        <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"><span class="iconify"
                                data-icon="ion:log-out-outline"></span> Log Out</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="dashboard-content">

            <section class="profile">
                <div class="title-section">
                    <span class="iconify mr-1" data-icon="fontisto:prescription"></span> View Medication
                </div>
                <div class="infoBox mt-3">
                    <div class="row col-lg-12 p-0 mx-auto">
                        <div class="col-lg-10 mx-auto">
                            <form class="form-custom" action="">
                                <div class="row shadow-sm">
                                    <div class="col-lg-6 col-md-6 bg-white border-right">
                                        <div class="form-container  pt-4">
                                            <div class="form-group mb-1">
                                                <label>User Name</label>
                                                <input type="text" class="form-control" placeholder="User name" readonly value="<?php echo e(json_decode($medication->shipping_address)->name); ?>">
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group mb-1">
                                                    <label>Email</label>
                                                    <input type="Email" class="form-control"
                                                        placeholder="User email" value="<?php echo e(json_decode($medication->shipping_address)->email); ?>" readonly>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group mb-1">
                                                    <label>Phone No</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Phone number" readonly value="<?php echo e(json_decode($medication->shipping_address)->phone); ?>">
                                                </div>
                                                <div class="form-group mb-1">
                                                    <label>Postal Code</label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Postal code" readonly value="<?php echo e(json_decode($medication->shipping_address)->post_code); ?>">
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group mb-1">
                                                    <label>Address</label>
                                                    <textarea class="form-control" rows="2" readonly
                                                        placeholder="Address here ..."><?php echo e(json_decode($medication->shipping_address)->address); ?>, <?php echo e(json_decode($medication->shipping_address)->area); ?>-<?php echo e(json_decode($medication->shipping_address)->city); ?>, <?php echo e(json_decode($medication->shipping_address)->region); ?></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 bg-white">
                                        <div class="form-container pt-5">
                                            <table>
                                                <tr>
                                                    <td class="w-50"><small>Invoice #</small></td>
                                                    <td class="w-50">
                                                        <input type="text" class="px-1 py-1 mb-3 form-control"
                                                            value="<?php echo e($medication->code); ?>" readonly />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="w-50"><small>Delivery Date</small></td>
                                                    <td class="w-50"><input type="text" class="form-control mb-3"
                                                            id="" readonly value="<?php echo e($medication->upcoming_date); ?>"></td>
                                                </tr>
                                                <tr>
                                                    <td class="w-50"><small>Medication Period</small></td>
                                                    <td class="w-50">
                                                        <?php
                                                            $preiod = App\Models\User::find($medication->user_id)->preiod;
                                                        ?>
                                                        <input type="text" name=""  class="form-control mb-3" value="<?php echo e($preiod); ?> Days" readonly id="">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="w-50">
                                                        <small>Amount Due</small>
                                                    </td>
                                                    <td class="w-50 text-right">
                                                        <input type="text" class=" py-1 form-control mb-3"
                                                            value="<?php echo e(single_price($medication->medicationDetails->sum('price') + $medication->medicationDetails->sum('tax') + $medication->shipping_cost)); ?>" readonly />
                                                    </td>
                                                </tr>
                                            </table>
                                            <!-- <button type="submit"  class="text-white btn-theme float-right mb-3">Update Password
                                            </button> -->

                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row col-lg-12 p-0 mx-auto">
                        <div class="col-lg-10 mx-auto">
                            <form class="form-custom " action="">
                                <div class="row shadow-sm">
                                    <div class=" col-md-12 bg-white p-0">
                                        <div class="form-container">
                                            <div class="overflow mx-auto" >
                                                <table class="table table-custom shadow-sm">
                                                    <thead>
                                                        <tr>
                                                            <th>Item</th>
                                                            <th>Quantity </th>
                                                            <th>Unit Cost</th>
                                                            <th>Price</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="inner">
                                                        <?php $__currentLoopData = $medication->medicationDetails; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $medicationDetail): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <tr>
                                                            <td width="200px">
                                                                <strong><a href="<?php echo e(route('product', $medicationDetail->product->slug)); ?>" target="_blank"><?php echo e(\App\Models\Product::where('id', '=', $medicationDetail->product_id )->first()->name); ?></a></strong>
                                                        <!--<small><?php echo e($medicationDetail->variation); ?></small>-->
                                                        <!--<small><?php echo e(\App\Models\Product::where('id', '=', $medicationDetail->product_id )->first()->name); ?></small>-->
                                                            </td>
                                                            <td>
                                                                <?php echo e($medicationDetail->quantity); ?>

                                                            </td>
                                                            <td>
                                                                <?php echo e(single_price($medicationDetail->price/$medicationDetail->quantity)); ?>

                                                            </td>
                                                            <td style="width:85px;">
                                                                <span><?php echo e(single_price($medicationDetail->price)); ?></span>
                                                            </td>
                                                        </tr>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                                        

                                                        <tr>
                                                            <td></td>
                                                            <td colspan="3" class="text-right">
                                                                <strong> Subtotal : </strong>
                                                                <?php echo e(single_price($medication->medicationDetails->sum('price'))); ?>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td colspan="3" class="text-right">
                                                                <strong> Shipping Cost : </strong>
                                                                <span><?php echo e(single_price($medication->shipping_cost)); ?></span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td></td>
                                                            <td colspan="3" class="text-right">
                                                                <strong>Total : </strong>
                                                                <?php echo e(single_price($medication->medicationDetails->sum('price') + $medication->medicationDetails->sum('tax') + $medication->shipping_cost)); ?>

                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                        
                                                 <a class="text-white btn-theme float-right mb-3" href="<?php echo e(route('usermedication.edit', encrypt($medication->user_id))); ?>"><?php echo e(__('Edit Medication')); ?></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </section>

        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_health\apon_ecom\resources\views/frontend/medication/view.blade.php ENDPATH**/ ?>