<?php $__env->startSection('content'); ?>

<div class="row">
    <div class="col-sm-12">
        <div class="ermsg"></div>
        

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
                    <th><?php echo e(__('Medicine Details')); ?></th>
                    <th><?php echo e(__('Pescription')); ?></th>
                    <th><?php echo e(__('address')); ?></th>
                    <th><?php echo e(__('Remark')); ?></th>
                    <th><?php echo e(__('status')); ?></th>
                    <th><?php echo e(__('history')); ?></th>
                    
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $userdata): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($key+1); ?></td>
                        <td><?php echo e(($userdata->patient_name)); ?></td>
                        <td><?php echo e(($userdata->phone)); ?></td>
                        <td><?php echo e(($userdata->medicine_details)); ?></td>
                        <td><img src="<?php echo e(asset($userdata->image)); ?>" height="100" width="100" alt=""></td>
                        <td><?php echo e(($userdata->address)); ?></td>
                        <td><?php if($userdata->remark=='positive'): ?> Positive <?php endif; ?>
                            <?php if($userdata->remark=='hpositive'): ?> Highly Positive <?php endif; ?>
                            <?php if($userdata->remark=='negative'): ?> Negative <?php endif; ?>
                            <?php if($userdata->remark=='hnegative'): ?> Highly Negative <?php endif; ?>
                            <?php if($userdata->remark=='dnc'): ?> DNC <?php endif; ?>
                            <?php if($userdata->remark=='alart'): ?> Alart <?php endif; ?>
                        </td>
                        <td>
                            <?php if($userdata->status==1): ?> Active <?php endif; ?>
                            <?php if($userdata->status==0): ?> Deactive <?php endif; ?>
                        </td>
                        <td><button type="button" class="btn btn-sm btn-purple" data-toggle="modal" data-target="#<?php echo e($userdata->id); ?>"> Add </button>
                            <button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#view<?php echo e($userdata->id); ?>"> View </button>
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
                                <form action="<?php echo e(route('reorder.remark.add')); ?>" method="post">
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

                                        <div class="column">
                                            <div style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); padding: 16px; background-color: #f1f1f1">
                                              <h5>Remark : <?php echo e($userdata->remark); ?></h5>
                                              <p> <?php echo e($userdata->comment); ?></p>
                                              <p><b>Next Calling Date: <?php echo e($userdata->redate); ?></b></p>
                                            </div>
                                          </div>

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

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/medication/newuserorder.blade.php ENDPATH**/ ?>