<?php $__env->startSection('css'); ?>
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap4.min.css">
<?php $__env->stopSection(); ?>
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

        <div class="m-1">


            <div class="card no-border mt-4">
                <table class="table table-sm table-hover table-responsive-md demo-dt-basic" id="example">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th><?php echo e(__('Date')); ?></th>
                            <th><?php echo e(__('Order No')); ?></th>
                            <th><?php echo e(__('Earning Type')); ?></th>
                            <th><?php echo e(__('Status')); ?></th>
                            <th><?php echo e(__('Amount')); ?></th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php $__currentLoopData = $trans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $tran): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td><?php echo e($key+1); ?></td>
                                <td><?php echo e(date('d-m-Y', strtotime($tran->created_at))); ?></td>
                                <td><?php echo e($tran->order_id); ?></td>
                                <td><?php echo e(ucfirst(str_replace('_', ' ', $tran ->earning_type))); ?></td>
                                <td><?php echo e($tran->status); ?></td>
                                <td><?php echo e(single_price($tran->amount)); ?></td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>


        </div>

        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
  </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/transaction.blade.php ENDPATH**/ ?>