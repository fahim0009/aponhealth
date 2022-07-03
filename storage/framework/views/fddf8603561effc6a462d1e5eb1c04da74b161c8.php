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
                <!--<div class="dropdown">-->
                <!--    <a class="btn dropdown-toggle profile-manage" href="#" role="button" id="dropdownMenuLink"-->
                <!--        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">-->
                <!--        <?php if(!empty(Auth::user()->avatar_original)): ?>-->
                <!--        <img src="<?php echo e(asset(Auth::user()->avatar_original)); ?>" alt="">-->
                <!--        <?php else: ?>-->
                <!--            <img src="<?php echo e(asset('uploads/1.jpg')); ?>" alt="">-->
                <!--        <?php endif; ?>-->
                <!--    </a>-->

                <!--    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">-->
                <!--        <a class="dropdown-item" href="<?php echo e(route('profile')); ?>"><span class="iconify"-->
                <!--                data-icon="carbon:user-avatar"></span> Profile</a>-->
                <!--        <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"><span class="iconify"-->
                <!--                data-icon="ion:log-out-outline"></span> Log Out</a>-->
                <!--    </div>-->
                <!--</div>-->
            </div>
        </div>
        <div class="dashboard-content">

        <div class="m-1">
            <div class="text-right mt-4">
                <a href="<?php echo e(route('default.shipping.address')); ?>"  class="btn btn-styled btn-base-1"><?php echo e(__('Make default shipping address')); ?></a>
                <a href="<?php echo e(route('default.billing.address')); ?>"  class="btn btn-styled btn-base-1"><?php echo e(__('Make default billing address')); ?></a>
            </div>

            <div class="card no-border mt-4">
                <table class="table table-sm table-hover table-responsive-md">
                    <thead>
                        <tr>
                            <th><?php echo e(__('Full Name')); ?></th>
                            <th><?php echo e(__('Address')); ?></th>
                            <th><?php echo e(__('Email')); ?></th>
                            <th><?php echo e(__('Phone')); ?></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                       <?php $__currentLoopData = $address; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php
                        $region = \App\Models\Division::where('id', '=', $data->region)->first()->name;
                        $city = \App\Models\District::where('id', '=', $data->city)->first()->name;
                        $area = \App\Models\Upazila::where('id', '=', $data->area)->first()->name;
                        ?>
                           <tr>
                               <td><?php echo e($data->name); ?></td>
                               <td><span style="background-color: rgb(71, 196, 77); color:white"><?php echo e($data->label); ?></span> <?php echo e($data->address); ?>, <?php echo e($city); ?>-<?php echo e($data->post_code); ?>, <?php echo e($region); ?></td>
                               <td><?php echo e($data->email); ?></td>
                               <td><?php echo e($data->phone); ?></td>
                               <td>
                                <?php if(($data->id == Auth::user()->billing_address) && ($data->id == Auth::user()->shipping_address)): ?>
                                Default Billing And Shipping Address
                                <?php elseif($data->id == Auth::user()->shipping_address): ?>
                                     Default Shipping Address
                                <?php elseif($data->id == Auth::user()->billing_address): ?>
                                Default Billing Address
                                <?php else: ?>

                                <?php endif; ?>
                            </td>
                               <td>
                                <a href="<?php echo e(route('address.edit', $data->id)); ?>" class="btn btn-base-1"><?php echo e(__('edit')); ?></a>
                                </td>
                           </tr>
                       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>

            <div class="text-right mt-4">
                <a href="<?php echo e(route('address.add')); ?>" class="btn btn-styled btn-base-1"><?php echo e(__('Add Address')); ?></a>
            </div>
        </div>




        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script>

  </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_health\apon_ecom\resources\views/frontend/customer/shipping_address.blade.php ENDPATH**/ ?>