<!--MAIN NAVIGATION-->
<!--===================================================-->
<nav id="mainnav-container">
    <div id="mainnav">

        <!--Menu-->
        <!--================================-->
        <div id="mainnav-menu-wrap">
            <div class="nano">
                <div class="nano-content">

                    <!--Profile Widget-->
                    <!--================================-->
                    


                    <!--Shortcut buttons-->
                    <!--================================-->
                    <div id="mainnav-shortcut" class="hidden">
                        <ul class="list-unstyled shortcut-wrap">
                            <li class="col-xs-3" data-content="My Profile">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-mint">
                                    <i class="demo-pli-male"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Messages">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-warning">
                                    <i class="demo-pli-speech-bubble-3"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Activity">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-success">
                                    <i class="demo-pli-thunder"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Lock Screen">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-purple">
                                    <i class="demo-pli-lock-2"></i>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!--================================-->
                    <!--End shortcut buttons-->


                    <ul id="mainnav-menu" class="list-group">

                        <!--Category name-->
                        

                        <!--Menu list item-->
                        <li class="<?php echo e(areActiveRoutes(['admin.dashboard'])); ?>">
                            <a class="nav-link" href="<?php echo e(route('admin.dashboard')); ?>">
                                <i class="fa fa-home"></i>
                                <span class="menu-title"><?php echo e(__('Dashboard')); ?></span>
                            </a>
                        </li>

                        <!-- Product Menu -->
                        <?php if(Auth::user()->user_type == 'admin' || in_array('1', json_decode(Auth::user()->staff->role->permissions))): ?>
                            <li>
                                <a href="#">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span class="menu-title"><?php echo e(__('Products')); ?></span>
                                    <i class="arrow"></i>
                                </a>

                                <!--Submenu-->
                                <ul class="collapse">
                                    <li class="<?php echo e(areActiveRoutes(['brands.index', 'brands.create', 'brands.edit'])); ?>">
                                        <a class="nav-link" href="<?php echo e(route('brands.index')); ?>"><?php echo e(__('Brand')); ?></a>
                                    </li>
                                    <li class="<?php echo e(areActiveRoutes(['feature-brands.index', 'feature-brands.create', 'feature-brands.edit'])); ?>">
                                        <a class="nav-link" href="<?php echo e(route('feature-brands.index')); ?>"><?php echo e(__('Feature Brand')); ?></a>
                                    </li>
                                    <li class="<?php echo e(areActiveRoutes(['categories.index', 'categories.create', 'categories.edit'])); ?>">
                                        <a class="nav-link" href="<?php echo e(route('categories.index')); ?>"><?php echo e(__('Category')); ?></a>
                                    </li>
                                    <li class="<?php echo e(areActiveRoutes(['subcategories.index', 'subcategories.create', 'subcategories.edit'])); ?>">
                                        <a class="nav-link" href="<?php echo e(route('subcategories.index')); ?>"><?php echo e(__('Subcategory')); ?></a>
                                    </li>
                                    <li class="<?php echo e(areActiveRoutes(['subsubcategories.index', 'subsubcategories.create', 'subsubcategories.edit'])); ?>">
                                        <a class="nav-link" href="<?php echo e(route('subsubcategories.index')); ?>"><?php echo e(__('Sub Subcategory')); ?></a>
                                    </li>
                                    <li class="<?php echo e(areActiveRoutes(['products.admin', 'products.create', 'products.admin.edit'])); ?>">
                                        <a class="nav-link" href="<?php echo e(route('products.admin')); ?>"><?php echo e(__('Published Products')); ?></a>
                                    </li>
                                    <li class="<?php echo e(areActiveRoutes(['products.admin.pending', 'products.create', 'products.admin.edit'])); ?>">
                                        <a class="nav-link" href="<?php echo e(route('products.admin.pending')); ?>"><?php echo e(__('Pending Products')); ?></a>
                                    </li>
                                    <?php if(\App\Models\BusinessSetting::where('type', 'vendor_system_activation')->first()->value == 1): ?>
                                        <li class="<?php echo e(areActiveRoutes(['products.seller', 'products.seller.edit'])); ?>">
                                            <a class="nav-link" href="<?php echo e(route('products.seller')); ?>"><?php echo e(__('Seller Products')); ?></a>
                                        </li>
                                    <?php endif; ?>
                                </ul>
                            </li>
                        <?php endif; ?>

                        

                        <?php if(Auth::user()->user_type == 'admin' || in_array('3', json_decode(Auth::user()->staff->role->permissions))): ?>
                            <?php
                                $orders = DB::table('orders')
                                            ->orderBy('code', 'desc')
                                            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
                                            //->where('order_details.seller_id', Auth::user()->id)
                                            ->where('orders.meduserorder', 0)
                                            ->where('orders.viewed', 0)
                                            ->select('orders.id')
                                            ->distinct()
                                            ->count();
                            ?>
                        <li class="<?php echo e(areActiveRoutes(['orders.index.admin','orders.pending', 'orders.processing', 'orders.on_delivery', 'orders.delivered', 'orders.rejected', 'orders.show'])); ?>">
                            <a class="nav-link" href="#">
                                <i class="fa fa-shopping-basket"></i>
                                <span class="menu-title"><?php echo e(__('Orders')); ?> <?php if($orders > 0): ?><span class="pull-right badge badge-info"><?php echo e($orders); ?></span><?php endif; ?></span>
                            </a>
                             <!--Submenu-->
                             <ul class="collapse">
                                <li class="<?php echo e(areActiveRoutes(['orders.pending', 'orders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('orders.pending')); ?>"><?php echo e(__('New Order')); ?><?php if($orders > 0): ?><span class="pull-right badge badge-info"><?php echo e($orders); ?></span><?php endif; ?></a>

                                </li>
                                <li class="<?php echo e(areActiveRoutes(['orders.processing', 'orders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('orders.processing')); ?>"><?php echo e(__('Processing Order')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['orders.complain', 'orders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('orders.complain')); ?>"><?php echo e(__('Complain Order')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['orders.on_delivery', 'orders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('orders.on_delivery')); ?>"><?php echo e(__('On Delivery Order')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['orders.delivered', 'orders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('orders.delivered')); ?>"><?php echo e(__('Delivered Order')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['orders.rejected', 'orders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('orders.rejected')); ?>"><?php echo e(__('Rejected Order')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['orders.index.admin', 'orders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('orders.index.admin')); ?>"><?php echo e(__('All Order')); ?></a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>

                        

                        <?php if(Auth::user()->user_type == 'admin' || in_array('4', json_decode(Auth::user()->staff->role->permissions))): ?>
                            <?php
                                $orders = DB::table('orders')
                                            ->orderBy('code', 'desc')
                                            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
                                            //->where('order_details.seller_id', Auth::user()->id)
                                            ->where('orders.meduserorder', 1)
                                            ->where('orders.viewed', 0)
                                            ->select('orders.id')
                                            ->distinct()
                                            ->count();
                            ?>
                        <li class="<?php echo e(areActiveRoutes(['medorders.index.admin','medorders.pending', 'medorders.processing', 'medorders.on_delivery', 'medorders.delivered', 'medorders.rejected', 'morders.show'])); ?>">
                            <a class="nav-link" href="#">
                                <i class="fa fa-shopping-basket"></i>
                                <span class="menu-title"><?php echo e(__('Medication Orders')); ?> <?php if($orders > 0): ?><span class="pull-right badge badge-info"><?php echo e($orders); ?></span><?php endif; ?></span>
                            </a>
                             <!--Submenu-->
                             <ul class="collapse">
                                
                                <li class="<?php echo e(areActiveRoutes(['medorders.wpayment', 'morders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('medorders.wpayment')); ?>"><?php echo e(__('Waiting for payment')); ?><?php if($orders > 0): ?><span class="pull-right badge badge-info"><?php echo e($orders); ?></span><?php endif; ?></a>
                                </li>
                                
                                <li class="<?php echo e(areActiveRoutes(['medorders.processing', 'morders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('medorders.processing')); ?>"><?php echo e(__('Processing Order')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['medorders.on_delivery', 'morders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('medorders.on_delivery')); ?>"><?php echo e(__('On Delivery Order')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['medorders.delivered', 'morders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('medorders.delivered')); ?>"><?php echo e(__('Delivered Order')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['medorders.complain', 'morders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('medorders.complain')); ?>"><?php echo e(__('Complain Order')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['medorders.rejected', 'morders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('medorders.rejected')); ?>"><?php echo e(__('Rejected Order')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['medorders.index.admin', 'morders.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('medorders.index.admin')); ?>"><?php echo e(__('All Order')); ?></a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>

                        

                        <?php if(Auth::user()->user_type == 'admin' || in_array('5', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['order-tracking.index'])); ?>">
                            <a class="nav-link" href="<?php echo e(route('order-tracking.index')); ?>">
                                <i class="fa fa-money"></i>
                                <span class="menu-title"><?php echo e(__('Order Tracking')); ?></span>
                            </a>
                        </li>
                        <?php endif; ?>


                        <?php if(Auth::user()->user_type == 'admin' || in_array('6', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['sales.index', 'sales.show'])); ?>">
                            <a class="nav-link" href="<?php echo e(route('sales.index')); ?>">
                                <i class="fa fa-money"></i>
                                <span class="menu-title"><?php echo e(__('Total sales')); ?></span>
                            </a>
                        </li>
                        <?php endif; ?>



                        <?php if(Auth::user()->user_type == 'admin' || in_array('7', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['customers.index','madication.newuserorder'])); ?>">
                            <a href="<?php echo e(route('customers.index')); ?>">
                                <i class="fa fa-user-plus"></i>
                                <span class="menu-title"><?php echo e(__('All user')); ?></span>
                            </a>
                        </li>

                        <?php endif; ?>


                        
                        <?php if(Auth::user()->user_type == 'admin' || in_array('8', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <?php
                        $medication = DB::table('users')
                                    ->orderBy('id', 'desc')
                                    ->where('med_upcoming', '=', date('Y-m-d'))
                                    ->select('id')
                                    ->distinct()
                                    ->count();
                        ?>
                        <li class="<?php echo e(areActiveRoutes(['medication.index', 'medicationuser.create', 'madication.neworder', 'meduser.view', 'meduser.edit' ])); ?>">
                            <a class="nav-link" href="<?php echo e(route('medication.index')); ?>">
                                <i class="fa fa-medkit"></i>
                                <span class="menu-title"><?php echo e(__('Madication')); ?><?php if($medication > 0): ?><span class="pull-right badge badge-info"><?php echo e($medication); ?></span><?php endif; ?></span>
                            </a>
                        </li>
                        <li class="<?php echo e(areActiveRoutes(['madication.newuser','madication.createorder'])); ?>">
                            <a class="nav-link" href="<?php echo e(route('madication.newuser')); ?>">
                                  <i class="fa fa-medkit"></i>
                                  <span class="menu-title"><?php echo e(__('Old Madication User List')); ?></span>
                            </a>
                        </li>
                        <li class="<?php echo e(areActiveRoutes(['medication.userneworder'])); ?>">
                            <a class="nav-link" href="<?php echo e(route('medication.userneworder')); ?>">
                                  <i class="fa fa-medkit"></i>
                                  <span class="menu-title"><?php echo e(__('Request Order')); ?></span>
                            </a>
                        </li>
                          <?php endif; ?>
                          
                          

                        <?php if(Auth::user()->user_type == 'admin' || in_array('9', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['doctor.index', 'doctor.create', 'doctor.edit','department.index', 'department.create', 'department.edit', 'time.slot'])); ?>">
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title"><?php echo e(__('Doctors')); ?></span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="<?php echo e(areActiveRoutes(['doctor.index', 'doctor.create', 'doctor.edit'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('doctor.index')); ?>"><?php echo e(__('All Doctor')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['department.index', 'department.create', 'department.edit'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('department.index')); ?>"><?php echo e(__('Departments')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['time.slot'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('time.slot')); ?>"><?php echo e(__('Add Time Slot')); ?></a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>
                        
                        
                        <?php if(Auth::user()->user_type == 'admin' || in_array('10', json_decode(Auth::user()->staff->role->permissions))): ?>
                            <?php
                                $unread = DB::table('messages')
                                            ->orderBy('id', 'desc')
                                            ->where('read', 0)
                                            ->select('id')
                                            ->distinct()
                                            ->count();

                            ?>
                        <li class="<?php echo e(areActiveRoutes(['admin.message.index'])); ?>">
                            <a class="nav-link" href="<?php echo e(route('admin.message.index')); ?>">
                                <i class="fa fa-shopping-basket"></i>
                                <span class="menu-title"><?php echo e(__('Message')); ?> <?php if($unread > 0): ?><span class="pull-right badge badge-info"><?php echo e($unread); ?></span><?php endif; ?></span>
                            </a>
                        </li>
                        <?php endif; ?>

                        

                        <?php if(Auth::user()->user_type == 'admin' || in_array('11', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['customer.prescription.index'])); ?>">
                            <a href="<?php echo e(route('customer.prescription.index')); ?>">
                                <i class="fa fa-user-plus"></i>
                                <span class="menu-title"><?php echo e(__('Prescription')); ?></span>
                            </a>
                        </li>
                        <?php endif; ?>


                        <?php if(Auth::user()->user_type == 'admin' || in_array('12', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li>
                            <a href="#">
                                <i class="fa fa-file"></i>
                                <span class="menu-title"><?php echo e(__('Reports')); ?></span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="<?php echo e(areActiveRoutes(['stock_report.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('stock_report.index')); ?>"><?php echo e(__('Stock Report')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['in_house_sale_report.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('in_house_sale_report.index')); ?>"><?php echo e(__('Sale Report')); ?></a>
                                </li>
                                <?php if(\App\Models\BusinessSetting::where('type', 'vendor_system_activation')->first()->value == 1): ?>

                                    <li class="<?php echo e(areActiveRoutes(['seller_report.index'])); ?>">
                                        <a class="nav-link" href="<?php echo e(route('seller_report.index')); ?>"><?php echo e(__('Seller Report')); ?></a>
                                    </li>
                                    <li class="<?php echo e(areActiveRoutes(['seller_sale_report.index'])); ?>">
                                        <a class="nav-link" href="<?php echo e(route('seller_sale_report.index')); ?>"><?php echo e(__('Seller Based Selling Report')); ?></a>
                                    </li>
                                <?php endif; ?>
                                <li class="<?php echo e(areActiveRoutes(['wish_report.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('wish_report.index')); ?>"><?php echo e(__('Product Wish Report')); ?></a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>
                        

                        <?php if(Auth::user()->user_type == 'admin' || in_array('13', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['admin-cblog-index','admin-blog-index','admin-blog-comment'])); ?>">
                            <a href="#">
                                <i class="fa fa-sticky-note-o"></i>
                                <span class="menu-title"><?php echo e(__('Blog')); ?></span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="<?php echo e(areActiveRoutes(['admin-cblog-index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('admin-cblog-index')); ?>"><?php echo e(__('Category')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['admin-blog-index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('admin-blog-index')); ?>"><?php echo e(__('Post')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['admin-blog-comment'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('admin-blog-comment')); ?>"><?php echo e(__('Comments')); ?></a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>
                        


                        
                        <?php if(Auth::user()->user_type == 'admin' || in_array('14', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['emailtemplete.index'])); ?>">
                            <a class="nav-link" href="<?php echo e(route('emailtemplete.index')); ?>">
                                <i class="fa fa-search"></i>
                                <span class="menu-title"><?php echo e(__('Email Templete')); ?></span>
                            </a>
                        </li>
                        <?php endif; ?>
                        

                        

                        <?php if(Auth::user()->user_type == 'admin' || in_array('15', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li>
                            <a href="#">
                                <i class="fa fa-briefcase"></i>
                                <span class="menu-title"><?php echo e(__('Business Settings')); ?></span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="<?php echo e(areActiveRoutes(['activation.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('activation.index')); ?>"><?php echo e(__('Activation')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['payment_method.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('payment_method.index')); ?>"><?php echo e(__('Payment method')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['smtp_settings.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('smtp_settings.index')); ?>"><?php echo e(__('SMTP Settings')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['google_analytics.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('google_analytics.index')); ?>"><?php echo e(__('Google Analytics')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['facebook_chat.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('facebook_chat.index')); ?>"><?php echo e(__('Facebook Chat')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['social_login.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('social_login.index')); ?>"><?php echo e(__('Social Media Login')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['currency.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('currency.index')); ?>"><?php echo e(__('Currency')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['languages.index', 'languages.create', 'languages.store', 'languages.show', 'languages.edit'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('languages.index')); ?>"><?php echo e(__('Languages')); ?></a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>

                        <?php if(Auth::user()->user_type == 'admin' || in_array('16', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li>
                            <a href="#">
                                <i class="fa fa-desktop"></i>
                                <span class="menu-title"><?php echo e(__('Frontend Settings')); ?></span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="<?php echo e(areActiveRoutes(['home_settings.index', 'home_banners.index', 'sliders.index', 'home_categories.index', 'home_banners.create', 'home_categories.create', 'home_categories.edit', 'sliders.create'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('home_settings.index')); ?>"><?php echo e(__('Home')); ?></a>
                                </li>
                                
                                <li class="<?php echo e(areActiveRoutes(['special-offer.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('special-offer.index')); ?>"><?php echo e(__('Special Offer')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['shippingmethod.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('shippingmethod.index')); ?>"><?php echo e(__('Shipping Method')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['shippingaddress.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('shippingaddress.index')); ?>"><?php echo e(__('Shipping Address')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['aboutus.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('aboutus.index','about')); ?>"><?php echo e(__('About Us')); ?></a>
                                </li>
                                

                                
                                
                                
                                <li class="<?php echo e(areActiveRoutes(['faq.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('faq.index','faq')); ?>"><?php echo e(__('Faq')); ?></a>
                                </li>
                                

                                <li>
                                    <a href="#">
                                        <span class="menu-title"><?php echo e(__('Policy Pages')); ?></span>
                                        <i class="arrow"></i>
                                    </a>

                                    <!--Submenu-->
                                    <ul class="collapse">

                                        
                                        <li class="<?php echo e(areActiveRoutes(['terms.index'])); ?>">
                                            <a class="nav-link" href="<?php echo e(route('terms.index', 'terms')); ?>"><?php echo e(__('Terms & Conditions')); ?></a>
                                        </li>
                                        <li class="<?php echo e(areActiveRoutes(['privacypolicy.index'])); ?>">
                                            <a class="nav-link" href="<?php echo e(route('privacypolicy.index', 'privacy_policy')); ?>"><?php echo e(__('Privacy Policy')); ?></a>
                                        </li>
                                    </ul>

                                </li>

                                
                                <li class="<?php echo e(areActiveRoutes(['generalsettings.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('generalsettings.index')); ?>"><?php echo e(__('General Settings')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['generalsettings.logo'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('generalsettings.logo')); ?>"><?php echo e(__('Logo Settings')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['generalsettings.color'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('generalsettings.color')); ?>"><?php echo e(__('Color Settings')); ?></a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>

                        <?php if(Auth::user()->user_type == 'admin' || in_array('17', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['seosetting.index'])); ?>">
                            <a class="nav-link" href="<?php echo e(route('seosetting.index')); ?>">
                                <i class="fa fa-search"></i>
                                <span class="menu-title"><?php echo e(__('SEO Setting')); ?></span>
                            </a>
                        </li>
                        <?php endif; ?>

                        <?php if(Auth::user()->user_type == 'admin' || in_array('18', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li>
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title"><?php echo e(__('Staffs')); ?></span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="<?php echo e(areActiveRoutes(['user.admin'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('user.admin')); ?>"><?php echo e(__('All Admin')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['staffs.index', 'staffs.create', 'staffs.edit'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('staffs.index')); ?>"><?php echo e(__('All staffs')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['roles.index', 'roles.create', 'roles.edit'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('roles.index')); ?>"><?php echo e(__('Staff permissions')); ?></a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>
                        <?php if(Auth::user()->user_type == 'admin' || in_array('19', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['user-message.index'])); ?>">
                            <a class="nav-link" href="<?php echo e(route('user-message.index')); ?>">
                                <i class="fa fa-search"></i>
                                <span class="menu-title"><?php echo e(__('Regular Medication')); ?></span>
                            </a>
                        </li>
                        <?php endif; ?>
                        <?php if(Auth::user()->user_type == 'admin' || in_array('20', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['affiliate-user.index'])); ?>">
                            <a href="#">
                                <i class="fa fa-sticky-note-o"></i>
                                <span class="menu-title"><?php echo e(__('Affiliate')); ?></span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="<?php echo e(areActiveRoutes(['affiliate-user.show'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('affiliate-user.show')); ?>"><?php echo e(__('Affiliate User')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['affiliate-user.index'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('affiliate-user.index')); ?>"><?php echo e(__('Requested User')); ?></a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>
                        
                        <?php if(Auth::user()->user_type == 'admin' || in_array('21', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li>
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title"><?php echo e(__('Code Master')); ?></span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                
                                <li class="<?php echo e(areActiveRoutes(['master.index', 'master.create', 'master.edit'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('master.index')); ?>"><?php echo e(__('Master')); ?></a>
                                </li>
                                <li class="<?php echo e(areActiveRoutes(['softcode.index', 'softcode.create', 'softcode.edit'])); ?>">
                                    <a class="nav-link" href="<?php echo e(route('softcode.index')); ?>"><?php echo e(__('Soft Code')); ?></a>
                                </li>
                            </ul>
                        </li>
                        <?php endif; ?>
                        
                        <?php if(Auth::user()->user_type == 'admin' || in_array('22', json_decode(Auth::user()->staff->role->permissions))): ?>
                        <li class="<?php echo e(areActiveRoutes(['withdraw.index.admin','withdraw.show'])); ?>">
                                <a class="nav-link" href="<?php echo e(route('withdraw.index.admin')); ?>">
                                    <i class="fa fa-shopping-basket"></i>
                                    <span class="menu-title"><?php echo e(__('Withdraw')); ?></span>
                                </a>
                            </li>
                        <?php endif; ?>
                        
                        
                    </ul>
                </div>
            </div>
        </div>
        <!--================================-->
        <!--End menu-->

    </div>
</nav>
<?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/inc/admin_sidenav.blade.php ENDPATH**/ ?>