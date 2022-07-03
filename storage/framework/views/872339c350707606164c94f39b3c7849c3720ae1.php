<?php $__env->startSection('content'); ?>

<div class="row">
    <div class="col-sm-12">
        <div class="ermsg"></div>
        <a href="<?php echo e(route('medicationuser.create')); ?>" class="btn btn-info pull-right"><?php echo e(__('add_new')); ?></a>
    </div>
</div>

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
                    <th><?php echo e(__('Email Address')); ?></th>
                    <th><?php echo e(__('Upcoming Date')); ?></th>
                    <th><?php echo e(__('Remaining Day')); ?></th>
                    <th width="10%"><?php echo e(__('Action')); ?></th>
                </tr>
            </thead>
            <tbody>
                <?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $userdata): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($key+1); ?></td>
                        <td><?php echo e(($userdata->name)); ?></td>
                        <td><?php echo e(($userdata->email)); ?></td>
                        <td><?php echo e(($userdata->med_upcoming)); ?></td>
                        <td>Remaining <strong><?php echo e(Carbon\Carbon::now()->diffInDays(Carbon\Carbon::parse($userdata->med_upcoming))); ?></strong> Days</td>
                        <td>
                            

                            <?php if($userdata->med_status==0): ?>
                            <a href="<?php echo e(route('madication.createorder', encrypt($userdata->id))); ?>"><i class="fa fa-plus" aria-hidden="true"></i></a>
                            <?php else: ?>
                            <a href="<?php echo e(route('meduser.edit', encrypt($userdata->id))); ?>"><i class="fa fa-edit" aria-hidden="true"></i></a>
                            <?php endif; ?>
                            
                            <a href="<?php echo e(route('madication.prescriptions.show', encrypt($userdata->id))); ?>"><i class="fa fa-picture-o" aria-hidden="true"></i></a>
                            
                            <?php if($userdata->med_status==1): ?>
                            <a href="<?php echo e(route('meduser.view', encrypt($userdata->id))); ?>"><i class="fa fa-eye" aria-hidden="true"></i></a>
                            <?php endif; ?>

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
<script>
    $(document).ready(function () {

        $("#addprescription").hide();

        $(".pformshow").click(function(){
            $("#addprescription").show(300);
            $("#patientid").val($(this).attr('pid'));

        });
        $("#pimageBtnClose").click(function(){
            $("#addprescription").hide(300);

        });

        //header for csrf-token is must in laravel
        $.ajaxSetup({ headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') } });
            //

            var url = "<?php echo e(URL::to('/admin/medication/prescription/store')); ?>";
            // console.log(url);
            $("#pimageBtn").click(function(){
                    var file_data = $('#prescription_image').prop('files')[0];
                    var form_data = new FormData();
                    form_data.append('prescription_image', file_data);
                    form_data.append("patientid", $("#patientid").val());

                    $.ajax({
                      url: url,
                      method: "POST",
                      contentType: false,
                      processData: false,
                      data:form_data,
                      success: function (d) {
                          if (d.status == 303) {
                              $(".ermsg").html(d.message);
                          }else if(d.status == 300){
                            $(".ermsg").html(d.message);
                            // success("Data Insert Successfully!!");
                            window.setTimeout(function(){location.reload()},2000)
                          }
                      },
                      error: function (d) {
                          console.log(d);
                      }
                  });
                //create  end
            });


});
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/medication/index.blade.php ENDPATH**/ ?>