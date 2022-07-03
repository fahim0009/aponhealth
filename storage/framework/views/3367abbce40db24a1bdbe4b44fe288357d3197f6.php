

<?php $__env->startSection('content'); ?>

<div class="row">
    <div class="col-sm-12">
     
    </div>
</div>

<br>

<!-- Basic Data Tables -->
<!--===================================================-->
<div class="panel">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo e(__('Regular Medication Form Data')); ?></h3>
    </div>
    <div class="panel-body">
        <table class="table table-striped table-bordered demo-dt-basic" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>#</th>
                    <th><?php echo e(__('Name')); ?></th>
                    <th><?php echo e(__('Email')); ?></th>
                    <th><?php echo e(__('Address')); ?></th>
                    <th><?php echo e(__('Mobile')); ?></th>
                    <th><?php echo e(__('Message')); ?></th>
                    <th width="10%"><?php echo e(__('Remark')); ?></th>
                </tr>
            </thead>
            
            <tbody>
                <?php $__currentLoopData = $contact; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                    <tr>
                        <td><?php echo e($key+1); ?></td>
                        <td><?php echo e($data->name); ?></td>
                        <td><?php echo e($data->email); ?></td>
                        <td><?php echo e($data->address); ?></td>
                        <td><?php echo e($data->mobile); ?></td>
                        <td><?php echo e($data->message); ?></td>
                        <td><button type="button" class="btn btn-sm btn-purple" data-toggle="modal" data-target="#<?php echo e($data->id); ?>"> Add </button>
                            <button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#view<?php echo e($data->id); ?>"> View </button>
                        </td>
                        
                    </tr>
                    
                    
                    <!-- Add Modal start -->
                    <div class="modal fade" id="<?php echo e($data->id); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            <form action="<?php echo e(route('rmhistory.store')); ?>" method="post">
                                <?php echo csrf_field(); ?>
                            <div class="modal-body">

                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input type="hidden" name="id" value="<?php echo e($data->id); ?>">
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
                    
                    <div class="modal fade" id="view<?php echo e($data->id); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                    <?php $__currentLoopData = \App\Models\Rmhistory::where('rm_id', '=', $data->id)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $his): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
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

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/contact/index.blade.php ENDPATH**/ ?>