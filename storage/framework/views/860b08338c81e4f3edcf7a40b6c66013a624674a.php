<?php $__env->startSection('title'); ?>
    Become an agent
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
                    <span class="iconify mr-1" data-icon="et:wallet"></span> My Affiliate
                </div>
                <div class="row align-items-center">
                    <div class="col-md-12 d-flex align-items-center">


                            <?php if(Auth::user()->ref_id == NULL): ?>

                            <?php if(empty(\App\Models\AgentRequest::where('user_id', '=', Auth::user()->id )->first()->id)): ?>

                            <div class="col-md-7">

                            </div>

                            <div class="col-md-2">
                                <form action="<?php echo e(route('affiliate.request')); ?>" method="post" enctype="multipart/form-data">
                                    <?php echo csrf_field(); ?>
                                    <input type="hidden" class="form-control" id="affreq"  name="affreq" >

                                    <button type="submit" class="btn btn-styled btn-base-1" data-wow-duration="1s" data-wow-iteration="100">
                                        Request for agent
                                    </button>
                                </form>
                            </div>
                            <?php else: ?>

                            <div class="col-md-7">
                            </div>
                            <div class="col-md-2">
                                <button type="button" class=" btn btn-styled btn-base-1" data-wow-duration="1s" data-wow-iteration="100">
                                    Request Pending
                                </button>
                            </div>
                            <?php endif; ?>

                         <?php else: ?>
                         <div class="col-md-2">
                            <label><?php echo e(__('Your reference link')); ?></label>
                        </div>
                         <div class="col-md-7">
                            <input type="text" class="form-control mb-3" placeholder="<?php if(Auth::user()->ref_id): ?> <?php echo e(url('users/registration?affiliate_id='.Auth::user()->ref_id)); ?> <?php else: ?> <?php endif; ?>" name="ref_link" id="ref_link" value="<?php if(Auth::user()->ref_id): ?> <?php echo e(url('users/registration?affiliate_id='.Auth::user()->ref_id)); ?> <?php else: ?> <?php endif; ?>" readonly>
                        </div>

                        <div class="col-md-2">
                         <button onclick="copyToClipboard()" class="btn btn-styled btn-base-1"><?php echo e(__('Copy')); ?></button>
                        </div>
                         <?php endif; ?>




                    </div>
                </div>
                <div class="infoBox mt-3">
                    <div class="row col-lg-12 mx-auto">
                        <div class="col-lg-11 mx-auto">
                            <div class="row shadow-sm">

                                <div class="col-lg-12 col-md-6 bg-white">
                                       <div class="form-container pt-5">
                                           <div style="overflow-x: auto;">
                                        <table class="table table-custom shadow-sm">
                                            <thead>
                                                <tr>
                                                    <th>#Sl</th>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Phone</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $__currentLoopData = $affiliate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                       <tr>
                                           <td><?php echo e($key+1); ?></td>
                                           <td><?php echo e($data->name); ?></td>
                                           <td><?php echo e($data->email); ?></td>
                                           <td><?php echo e($data->phone); ?></td>
                                       </tr>
                                   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </tbody>
                                        </table>
                                        </div>
                                        <div class="pagination-wrapper py-4">
                                            <ul class="pagination justify-content-end">

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


<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
        function copyToClipboard() {
            document.getElementById("ref_link").select();
            document.execCommand('copy');
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/affiliate.blade.php ENDPATH**/ ?>