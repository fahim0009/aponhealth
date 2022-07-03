<div class="leftSection wow fadeIn" data-wow-delay=".25s" id='leftSidebar'>
    <!-- <div class="brand">
        <img src="images/logo.png" alt="">
    </div> -->
    <div class="user-profile">
        <div class="close-dashboard-sidebar">
            <span class="iconify" onclick="foldSidebar();" data-icon="mdi:window-close"></span>
        </div>
        <?php if(!empty(Auth::user()->avatar_original)): ?>
            <img src="<?php echo e(asset(Auth::user()->avatar_original)); ?>" alt="">
        <?php else: ?>
            <img src="<?php echo e(asset('uploads/1.jpg')); ?>" alt="">
        <?php endif; ?>
        <p class='user-name mb-0'>
            <span><?php echo e(Auth::user()->name); ?></span>
        </p>
    </div>
    <nav class="sidenav">
        <ul>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['dashboard'])); ?>">
                <a href="<?php echo e(route('dashboard')); ?>" class="">
                    <span class="iconify" data-icon="clarity:dashboard-solid-badged"></span>
                    Dashboard
                </a>
            </li>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['purchase_history.index'])); ?>">
                <a href="<?php echo e(route('purchase_history.index')); ?>" class="">
                    <span class="iconify" data-icon="raphael:history"></span>
                    Orders
                </a>
            </li>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['wishlists.index'])); ?>">
                <a href="<?php echo e(route('wishlists.index')); ?>" class="">
                    <span class="iconify" data-icon="clarity:heart-solid"></span>
                    Wishlist
                </a>
            </li>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['usermedication.view'])); ?> <?php echo e(areActiveRoutesHome(['usermedication.index'])); ?>">
                <?php if(!empty(\App\Models\Medication::where('user_id', '=', Auth::user()->id)->first()->user_id)): ?>
                <a href="<?php echo e(route('usermedication.view')); ?>" class="">
                    <span class="iconify" data-icon="ic:outline-medication"></span>
                    Medication
                </a>
                <?php else: ?>
                <a href="<?php echo e(route('usermedication.index')); ?>" class="">
                    <span class="iconify" data-icon="ic:outline-medication"></span>
                    Medication
                </a>
                <?php endif; ?>

            </li>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['prescription.index'])); ?>">
                <a href="<?php echo e(route('prescription.index')); ?>" class="">
                    <span class="iconify" data-icon="fluent:note-add-16-filled"></span>
                    Prescription
                </a>
            </li>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['profile'])); ?>">
                <a href="<?php echo e(route('profile')); ?>" class="">
                    <span class="iconify" data-icon="icomoon-free:profile"></span>
                    Profile
                </a>
            </li>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['address.book','address.edit','address.add','default.shipping.address','default.billing.address'])); ?>">
                <a href="<?php echo e(route('address.book')); ?>" class="">
                    <span class="iconify" data-icon="icomoon-free:profile"></span>
                    Address
                </a>
            </li>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['wallet.index'])); ?>">
                <a href="<?php echo e(route('wallet.index')); ?>" class="">
                    <span class="iconify" data-icon="fontisto:wallet"></span>
                    Wallet
                </a>
            </li>
            
            
            <li class="nav-item <?php echo e(areActiveRoutesHome(['message.index'])); ?>">
                <a href="<?php echo e(route('message.index')); ?>" class="">
                    <span class="iconify" data-icon="bpmn:end-event-message"></span>
                    Message
                </a>
            </li>
            
            
            <!--new code -->
            <?php if(isset(Auth::user()->ref_id)): ?>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['withdraw.index'])); ?>">
                <a href="<?php echo e(route('withdraw.index')); ?>" class="">
                    <span class="iconify" data-icon="ri:lock-password-fill"></span>
                    Withdraw
                </a>
            </li>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['withdraw-method'])); ?>">
                <a href="<?php echo e(route('withdraw-method')); ?>" class="">
                    <span class="iconify" data-icon="ri:lock-password-fill"></span>
                    Withdraw Method
                </a>
            </li>
            <li class="nav-item <?php echo e(areActiveRoutesHome(['transaction.index'])); ?>">
                <a href="<?php echo e(route('transaction.index')); ?>" class="">
                    <span class="iconify" data-icon="ri:lock-password-fill"></span>
                    Transaction
                </a>
            </li>
            <?php endif; ?>
            
            
            <!--end -->
                
            <li class="nav-item <?php echo e(areActiveRoutesHome(['affiliate.index'])); ?>">
                <a href="<?php echo e(route('affiliate.index')); ?>" class="">
                    <span class="iconify" data-icon="ri:lock-password-fill"></span>
                    Agent
                </a>
            </li>
            <!--<li class="nav-item <?php echo e(areActiveRoutesHome(['changepassword'])); ?>">-->
            <!--    <a href="<?php echo e(route('changepassword')); ?>" class="">-->
            <!--        <span class="iconify" data-icon="ri:lock-password-fill"></span>-->
            <!--        Change Password-->
            <!--    </a>-->
            <!--</li>-->
            <li class="nav-item <?php echo e(areActiveRoutesHome(['logout'])); ?>">
                <a href="<?php echo e(route('logout')); ?>" class="">
                    <span class="iconify" data-icon="ri-logout-box-line"></span>
                    Logout
                </a>
            </li>
            

            <!-- <li class="nav-item">
                <a href="#">
                    <span class="iconify" data-icon="ic:baseline-space-dashboard"></span>
                    Submenu Item
                </a>
                <ul class="sub-item">
                    <li><a href="#"> <span class="iconify" data-icon="bi:arrow-right-short"></span></span> sub
                            items 1</a></li>
                    <li><a href="#"> <span class="iconify" data-icon="bi:arrow-right-short"></span></span> sub
                            items 1</a></li>
                </ul>
            </li> -->

        </ul>
    </nav>
</div>
<?php /**PATH E:\xampp7.4\htdocs\laravel\apon_health\apon_ecom\resources\views/frontend/inc/customer_side_nav.blade.php ENDPATH**/ ?>