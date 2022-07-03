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
                    <span class="iconify mr-1" data-icon="fontisto:prescription"></span> Prescriptions
                </div>
                <div class="infoBox mt-3">
                    <div class="row col-lg-12 mx-auto">
                        <div class="col-lg-10 mx-auto">
                            <form action="<?php echo e(route('prescription.insert')); ?>" method="post" enctype="multipart/form-data">
                                <?php echo csrf_field(); ?>
                                <div class="row shadow-sm">
                                    <div class="col-lg-4 col-md-6 bg-white border-right">
                                        <div class="form-container text-center">
                                            <img src="<?php echo e(asset('frontend/images/images/rx.svg')); ?>" class="img-fluid mx-auto img25">
                                        </div>
                                    </div>
                                    <div class="col-lg-8 col-md-6 bg-white">
                                        <div class="form-container">
                                            <div class="form-row">
                                                <div class="form-group">
                                                    <label>Message </label>
                                                    <textarea rows="2" cols="36" class="form-control"
                                                    placeholder="Type your message here.." name="message" id="message" value="" required></textarea>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group">
                                                    <label>Photo</label>
                                                    <input type="file" class="form-control" id="uploadPrescriptionField"  multiple accept="image/*" max="5"  name="image[]" required>
                                                </div>
                                            </div>
                                                <button type="submit" class="text-white btn-theme float-right mb-3"><?php echo e(__('Upload
                                                    Prescsription')); ?></button>
                                            <button type="reset"
                                                class="text-white btn btn-dark float-right mb-3 mr-2">Cancel</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row col-lg-12 mx-auto">
                        <div class="col-lg-10 mx-auto">
                            
                                <div class="row shadow-sm">
                                    <div class=" col-md-12 bg-white p-0">
                                        <div class="form-container">
                                            <div class="overflow">
                                                <table class="table table-custom shadow-sm">
                                                    <thead>
                                                        <tr>
                                                            <th>#sl</th>
                                                            <th>Date</th>
                                                            <th>Prescription Message</th>
                                                            <th>Image</th>
                                                            <th>Action </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php $__currentLoopData = $prescriptions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <tr>
                                                            <td><?php echo e($key+1); ?></td>
                                                            <td><?php echo e(date('d-m-Y', strtotime($data->created_at))); ?></td>
                                                            <td style="max-width:200px;"><?php echo e($data->patient_name); ?></td>
                                                            <td>
                                                                <img src="<?php echo e(asset('uploads/prescription/'.$data->image)); ?>" style="width:70px">
                                                            </td>
                                                            <td>
                                                                <div class="action">
                                                                    
                                                                    <a href="<?php echo e(route('user.prescription.view', encrypt($data->id))); ?>" title="View"><span class="iconify mr-2" data-icon="emojione:eye"></span></a>
                                                                    <a onclick="confirm_modal('<?php echo e(route('userprescription.destroy', $data->id)); ?>')" title="Delete"><span class="iconify text-danger" data-icon="fluent:delete-20-filled"></span> </a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </tbody>
                                                </table>
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
        function show_prescription_modal(){
            $('#prescription_modal').modal('show');
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/medication/index.blade.php ENDPATH**/ ?>