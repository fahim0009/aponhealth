<?php $__env->startSection('content'); ?>

<div class="row">
    <div class="col-sm-12">
        <div class="ermsg"></div>
        <a href="<?php echo e(route('medication.index')); ?>" class="btn btn-purple pull-left"><?php echo e(__('back')); ?></a>
        <a href="<?php echo e(route('medicationuser.create')); ?>" class="btn btn-info pull-right"><?php echo e(__('add_new')); ?></a>

    </div>
</div>
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
                    <th><?php echo e(__('Email Address')); ?></th>
                    <th><?php echo e(__('Remark')); ?></th>
                    <th><?php echo e(__('History')); ?></th>
                    <th width="10%"><?php echo e(__('Action')); ?></th>
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $userdata): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($key+1); ?></td>
                        <td><?php echo e(($userdata->name)); ?></td>
                        <td><?php echo e(($userdata->email)); ?></td>
                        <td><?php echo e(($userdata->remark)); ?></td>
                        <td><button type="button" class="btn btn-sm btn-purple" data-toggle="modal" data-target="#<?php echo e($userdata->id); ?>"> Add </button>
                            <button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#view<?php echo e($userdata->id); ?>"> View </button>
                        </td>
                        <td>
                            <a href="<?php echo e(route('madication.createorder', encrypt($userdata->id))); ?>"><i class="fa fa-plus" aria-hidden="true"></i></a>
                            <a href="<?php echo e(route('madication.prescriptions.show', encrypt($userdata->id))); ?>" target="blank" ><i class="fa fa-picture-o" aria-hidden="true"></i></a>
                            <a onclick="confirm_modal('<?php echo e(route('medicationuser.destroy', $userdata->id)); ?>');"><i class="fa fa-trash" aria-hidden="true"></i></a>
                            <?php if($userdata->med_status==1): ?>
                            <a href="<?php echo e(route('meduser.view', encrypt($userdata->id))); ?>"><i class="fa fa-eye" aria-hidden="true"></i></a>
                            <?php endif; ?>
                        </td>
                        </td>
                    </tr>
                    <!-- Add Modal start -->
                        <div class="modal fade" id="<?php echo e($userdata->id); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <form action="<?php echo e(route('history.store')); ?>" method="post">
                                    <?php echo csrf_field(); ?>
                                <div class="modal-body">

                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="hidden" name="id" value="<?php echo e($userdata->id); ?>">
                                            <textarea name="comment" id="" cols="76" rows="8" placeholder="Type your commnets" required></textarea>
                                        </div>

                                        <label class="col-sm-4 control-label" for="logo"><?php echo e(__('Select Remark')); ?></label>
                                        <div class="col-sm-8">
                                          <select class="form-control" name="remark" required>
                                              <option value="">Select Option</option>
                                              <option value="positive">Positive</option>
                                              <option value="hpositive">Highly Positive</option>
                                              <option value="negative">Negative</option>
                                              <option value="hnegative">Highly Negative</option>
                                              <option value="dnc">DNC</option>
                                              <option value="alart">Alart</option>
                                          </select>

                                        </div>
                                            <label class="col-sm-4 control-label" style="margin-top: 5px" for="logo"><?php echo e(__('Select Next Meeting')); ?></label>
                                            <div class="col-sm-8" style="margin-top: 5px">
                                              <input type="date" class="form-control" name="redate" placeholder="Last name">
                                            </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <input type="submit" class="btn btn-primary" value="Save changes">
                                </div>
                            </form>
                            </div>
                            </div>
                        </div>
                        <!-- Add Modal end -->
                        
                        <div class="modal fade" id="view<?php echo e($userdata->id); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <?php $__currentLoopData = $userdata->history; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $his): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <div class="column">
                                            <div style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); padding: 16px; background-color: #f1f1f1">
                                              <h5>Remark : <?php echo e($his->remark); ?></h5>
                                              <p> <?php echo e($his->discription); ?></p>
                                              <p><b>Next Calling Date: <?php echo e($his->remark_date); ?></b></p>
                                            </div>
                                          </div>
                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                            </div>
                        </div>
                        

                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
    </div>
</div>


<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/medication/newuser.blade.php ENDPATH**/ ?>