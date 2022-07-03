

<?php $__env->startSection('content'); ?>


<br>



<!-- Basic Data Tables -->
<!--===================================================-->
<div class="panel">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo e(__('Customers')); ?></h3>

    </div>
    <div class="panel-body">
        <table class="table table-striped table-bordered demo-dt-basic" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>#</th>
                    <th><?php echo e(__('Date')); ?></th>
                    <th><?php echo e(__('Name')); ?></th>
                    <th><?php echo e(__('Email Address')); ?></th>
                    <th><?php echo e(__('Phone')); ?></th>
                    <th><?php echo e(__('Medication')); ?></th>
                    <th width="10%"><?php echo e(__('Action')); ?></th>
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $affiliate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $customer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($key+1); ?></td>
                        <td><?php echo e($customer->created_at); ?></td>
                        <td><?php echo e($customer->name); ?></td>
                        <td><?php echo e($customer->email); ?></td>
                        <td><?php echo e($customer->phone); ?></td>
                        <td><?php echo e($customer->medication); ?></td>
                        <td>
                            <form action="<?php echo e(route('affiliate.store')); ?>" method="post" enctype="multipart/form-data">
                                <?php echo csrf_field(); ?>
                                <input type="hidden" class="form-control" id="user_id"  name="user_id" value="<?php echo e($customer->user_id); ?>" >
                                <button type="submit" class="btn btn-sm btn-purple">
                                    Make Link
                                </button>       
                            </form>
                        </td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>

    </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/affiliate/request.blade.php ENDPATH**/ ?>