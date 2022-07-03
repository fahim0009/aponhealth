<?php $__env->startSection('content'); ?>

        <div id="addThisFormContainer">
            <div class="col-lg-6 col-lg-offset-3">
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php echo e(__('Add Master Data')); ?></h3>
                    </div>

                    <!--Horizontal Form-->
                    <!--===================================================-->
                    <form class="form-horizontal" action="" method="POST" enctype="multipart/form-data" id="createThisForm">
                        <?php echo csrf_field(); ?>
                        <div class="panel-body">
                            <input type="hidden" id="codeid" name="codeid" value="">
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="softcode"><?php echo e(__('Softcode')); ?></label>
                                <div class="col-sm-9">
                                    <select name="softcode" id="softcode" required class="form-control demo-select2-placeholder">
                                        <?php $__currentLoopData = $softcode; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($item->name); ?>"><?php echo e($item->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="hardcode"><?php echo e(__('Hardcode')); ?></label>
                                <div class="col-sm-9">
                                    <input type="text" placeholder="<?php echo e(__('Hardcode')); ?>" id="hardcode" name="hardcode" class="form-control" required>
                                </div>
                            </div>

                            <!--<div class="form-group">-->
                            <!--    <label class="col-sm-3 control-label" for="image"><?php echo e(__('Image')); ?></label>-->
                            <!--    <div class="col-sm-9">-->
                            <!--        <input type="file" placeholder="<?php echo e(__('Image')); ?>" id="image" name="image" class="form-control" required>-->
                            <!--    </div>-->
                            <!--</div>-->

                            <!--<div class="form-group">-->
                            <!--    <label class="col-sm-3 control-label" for="details"><?php echo e(__('Details')); ?></label>-->
                            <!--    <div class="col-sm-9">-->
                            <!--        <textarea name="details" id="details" class="form-control" cols="30" rows="10" required></textarea>-->
                            <!--    </div>-->
                            <!--</div>-->

                            <!--<div class="form-group">-->
                            <!--    <label class="col-sm-3 control-label" for="sort_details"><?php echo e(__('Tag')); ?></label>-->
                            <!--    <div class="col-sm-9">-->
                            <!--        <input type="text" placeholder="<?php echo e(__('Tag')); ?>" id="sort_details" name="sort_details" class="form-control" required>-->
                            <!--    </div>-->
                            <!--</div>-->

                        </div>
                        <div class="panel-footer text-right">
                            <input type="button" id="addBtn" value="Create" class="btn btn-primary">
                            <input type="button" id="FormCloseBtn" value="Close" class="btn btn-warning">
                        </div>
                    </form>
                    <!--===================================================-->
                    <!--End Horizontal Form-->
                </div>
            </div>
        </div>

        
        <hr>

        <div id="contentContainer">

                        <!-- Basic Data Tables -->
            <!--===================================================-->
            <div class="card">
                
                <div class="card-body">
                    <table class="table table-striped table-bordered demo-dt-basic" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th width="10%">#</th>
                                <th><?php echo e(__('Sortcode')); ?></th>
                                <th><?php echo e(__('Hardcode')); ?></th>
                                <th><?php echo e(__('Action')); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__currentLoopData = $masters; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($key+1); ?></td>
                                    <td><?php echo e($data->softcode); ?></td>
                                    <td><?php echo e($data->hardcode); ?></td>
                                    <td>
                                        <a id="EditBtn" rid="<?php echo e($data->id); ?>"><i class="fa fa-edit" style="color: #2196f3;font-size:16px;"></i></a>
                                        <!--<a id="deleteBtn" rid="<?php echo e($data->id); ?>"><i class="fa fa-trash-o" style="color: red;font-size:16px;"></i></a>-->
                                    </td>

                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
        $(document).ready(function () {

            $("#addThisFormContainer").hide();
            $("#newBtn").click(function(){
                clearform();
                $("#newBtn").hide(100);
                $("#addThisFormContainer").show(300);

            });
            $("#FormCloseBtn").click(function(){
                $("#addThisFormContainer").hide(200);
                $("#newBtn").show(100);
                clearform();
            });


            //header for csrf-token is must in laravel
            $.ajaxSetup({ headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') } });
            //

            var url = "<?php echo e(URL::to('/admin/master')); ?>";
            // console.log(url);
            $("#addBtn").click(function(){
            //   alert("#addBtn");
                if($(this).val() == 'Create') {
                    // var file_data = $('#image').prop('files')[0];
                    var form_data = new FormData();
                    form_data.append("softcode", $("#softcode").val());
                    form_data.append("hardcode", $("#hardcode").val());
                    // form_data.append('image', file_data);
                    // form_data.append("details", $("#details").val());
                    // form_data.append("sort_details", $("#sort_details").val());

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
                            //success("Master Data Insert Successfully!!");
                                window.setTimeout(function(){location.reload()},2000)
                          }
                      },
                      error: function (d) {
                          console.log(d);
                      }
                  });
                }
                //create  end
                //Update
                if($(this).val() == 'Update'){
                // alert('update btn work');
                //   var file_data = $('#image').prop('files')[0];
                //   if(typeof file_data === 'undefined'){
                //     file_data = 'null';
                //   }
                  var form_data = new FormData();
                  form_data.append("softcode", $("#softcode").val());
                  form_data.append("hardcode", $("#hardcode").val());
                //   form_data.append('image', file_data);
                //   form_data.append("details", $("#details").val());
                //   form_data.append("sort_details", $("#sort_details").val());
                  form_data.append('_method', 'put');

                    $.ajax({
                        url:url+'/'+$("#codeid").val(),
                        type: "POST",
                        dataType: 'json',
                        contentType: false,
                        processData: false,
                        data:form_data,
                        success: function(d){
                            console.log(d);
                            if (d.status == 303) {
                                $(".ermsg").html(d.message);
                                pagetop();
                            }else if(d.status == 300){
                                $(".ermsg").html(d.message);
                                //success("Master Data Update Successfully!!");
                                window.setTimeout(function(){location.reload()},2000)
                            }
                        },
                        error:function(d){
                            console.log(d);
                        }
                    });
                }
                //Update
            });
            //Edit
            $("#contentContainer").on('click','#EditBtn', function(){
                //alert("btn work");
                $codeid = $(this).attr('rid');
                //console.log($codeid);
                $info_url = url + '/'+$codeid+'/edit';
                //console.log($info_url);
                $.get($info_url,{},function(d){
                    populateForm(d);
                    //pagetop();
                });
            });
            //Edit  end

            //Delete
            $("#contentContainer").on('click','#deleteBtn', function(){
                if(!confirm('Sure?')) return;
                var masterid = $(this).attr('rid');
                var info_url = url + '/'+masterid;
                console.log(info_url);
                //alert(info_url);
                $.ajax({
                    url:info_url,
                    method: "DELETE",
                    type: "DELETE",
                    data:{
                    },
                    success: function(d){
                        if(d.success) {
                            alert(d.message);
                            location.reload();
                        }
                    },
                    error:function(d){
                        console.log(d);
                    }
                });
            });
            //Delete




            function populateForm(data){
                $("#softcode").val(data.softcode);
                $("#hardcode").val(data.hardcode);
                $("#details").val(data.details);
                $("#sort_details").val(data.sort_details);
                $("#codeid").val(data.id);
                $("#addBtn").val('Update');
                $("#addThisFormContainer").show(300);
                $("#newBtn").hide(100);
            }
            function clearform(){
                $('#createThisForm')[0].reset();
                $("#addBtn").val('Create');
            }
        });

    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#codemaster").addClass('active');
            $("#codemaster").addClass('is-expanded');
            $("#master").addClass('active');
        });
    </script>
   <script src="//cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>
   <script>
    // CKEDITOR.replace( 'details' );
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/admin/master/index.blade.php ENDPATH**/ ?>