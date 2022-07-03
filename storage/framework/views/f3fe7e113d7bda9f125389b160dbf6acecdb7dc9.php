<?php $__env->startSection('content'); ?>

<div class="row">
    <div class="col-sm-12">
        <div class="ermsg"></div>
        <a href="<?php echo e(route('emailtemplete.create')); ?>" class="btn btn-info pull-right"><?php echo e(__('add_new')); ?></a>
    </div>
</div>

<form action="<?php echo e(route('test.route')); ?>" method="post">
    <?php echo csrf_field(); ?>
<input type="text" name="mobile" id="">
<input type="submit" value="submit">

</form>

<br>



<br>
<!-- Basic Data Tables -->
<!--===================================================-->
<div class="panel">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo e(__('Users')); ?></h3>
    </div>
    <div class="panel-body">
        <table class="table table-striped table-bordered demo-dt-basic" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>#</th>
                    <th><?php echo e(__('Name')); ?></th>
                    <th><?php echo e(__('Description')); ?></th>
                    <th><?php echo e(__('Footer Note')); ?></th>
                    <th><?php echo e(__('Status')); ?></th>
                    <th width="10%"><?php echo e(__('Action')); ?></th>
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $email; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $emaildata): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($key+1); ?></td>
                        <td><?php echo e(($emaildata->templete)); ?></td>
                        <td><?php echo e(($emaildata->description)); ?></td>
                        <td><?php echo e(($emaildata->footer)); ?></td>
                        <td></td>
                        <td>
                            <a href="<?php echo e(route('emailtemplete.edit', encrypt($emaildata->id))); ?>"><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
                        </td>

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

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/email-templete/index.blade.php ENDPATH**/ ?>