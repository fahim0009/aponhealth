<?php $__env->startSection('title'); ?>
    Purchase History
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
            <section class="profile purchase-status">
                <div class="title-section">
                    <span class="iconify mr-1" data-icon="et:wallet"></span>  Purchase History
                </div>
                <div class="infoBox mt-3">
                    <div class="row col-lg-12 mx-auto">
                        <div class="col-lg-11 mx-auto">
                            
                                <div class="row shadow-sm">
                                    <div class="p-0 col-md-12 bg-white">
                                        <div class="form-container ">
                                            <div class="overflow">
                                                <?php if(count($orders) > 0): ?>
                                                <table class="table table-custom shadow-sm">
                                                    <thead>
                                                        <tr>
                                                            <th>#Order Id</th>
                                                            <th>Date</th>
                                                            <th>Amount</th>
                                                            <th>Order Status</th>
                                                            <th>Payment Status</th>
                                                            <th>Payment </th>
                                                            <th>Action </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <tr>
                                                            <td><a href="#<?php echo e($order->code); ?>" onclick="show_purchase_history_details(<?php echo e($order->id); ?>)"><?php echo e($order->code); ?></a></td>
                                                            <td><?php echo e(date('d-m-Y', $order->date)); ?></td>
                                                            <td><?php echo e(single_price($order->grand_total)); ?></td>
                                                            <td>
                                                                <?php
                                                                    $status = $order->delivery_status;
                                                                ?>
                                                                <?php if($order->delivery_status == 'wpayment'): ?>
                                                                    Waiting for payment
                                                                <?php else: ?>
                                                                <?php echo e(ucfirst(str_replace('_', ' ', $status))); ?>

                                                                <?php endif; ?>
                                                            </td>
                                                            <td>
                                                                <span class="badge badge--2 mr-4">
                                                                    <?php if($order->payment_status == 'paid'): ?>
                                                                        <div class="paid">paid</div>
                                                                    <?php else: ?>
                                                                        <div class="unpaid">unpaid</div>
                                                                    <?php endif; ?>
                                                                </span>

                                                            </td>
                                                            <td>
                                                                <?php if($order->payment_status == 'paid'): ?>
                                                                    <button class="btn btn-success btn-sm" disabled>Payment Complete</button>
                                                                <?php else: ?>
                                                                <form action="<?php echo e(route('payment.med.order')); ?>" method="post">
                                                                    <?php echo csrf_field(); ?>
                                                                    <input type="text" name="amount" id="" value="<?php echo e($order->grand_total); ?>" readonly hidden>
                                                                    <input type="text" name="payment_option" id="" value="medorder" readonly hidden>
                                                                    <input type="text" name="tran_id" id="" value="<?php echo e($order->id); ?>" readonly hidden>
                                                                    <button class="pay-now">pay now</button></td>
                                                                </form>
                                                                <?php endif; ?>

                                                            <td>
                                                                <div class="action">
                                                                    <span onclick="show_purchase_history_details(<?php echo e($order->id); ?>)" title="Order Details" class="iconify"  data-icon="icon-park-outline:transaction-order"></span>
                                                                    <a href="<?php echo e(route('customer.invoice.download', $order->id)); ?>" class="dropdown-item"><span title="Download Invoice" class="iconify" data-icon="carbon:download-study"></span></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </tbody>
                                                </table>
                                                <?php else: ?>
                                                <span>Order not found</span>
                                                <?php endif; ?>
                                            </div>

                                            <div class="pagination-wrapper py-4">
                                                <ul class="pagination justify-content-end">
                                                    <?php echo e($orders->links()); ?>

                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>
</div>

    <div class="modal fade" id="order_details" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-zoom product-modal" id="modal-size" role="document">
            <div class="modal-content position-relative">
                <div class="c-preloader">
                    <i class="fa fa-spin fa-spinner"></i>
                </div>
                <div id="order-details-modal-body">

                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/purchase_history.blade.php ENDPATH**/ ?>