@php
$normal_gallary_notice = App\Models\Navigation::query()
    ->where('nav_category', 'Main')
    ->where('page_type', 'Normal')

    ->orderBy('position', 'ASC')
    ->get();

$menus = App\Models\Navigation::query()
    ->where('nav_category', 'Main')
    ->where('page_type', '!=', 'Job')
    ->where('page_type', '!=', 'Notice')
    ->where('parent_page_id', 0)
    ->where('page_status', '1')
    ->orderBy('position', 'ASC')
    ->get();
$global_setting = App\Models\GlobalSetting::all()->first();
if (isset($normal)) {
    $seo = $normal;
} elseif (isset($job)) {
    $seo = $job;
}

@endphp

<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <!-----SEO--------->

    <title>{{ $seo->page_titile ?? $global_setting->page_title }}</title>
    <meta name="title" content="{{ $seo->page_titile ?? $global_setting->page_title }}">
    <meta name="description" content="{{ $seo->page_description ?? $global_setting->page_description }}">
    <meta name="keywords" content="{{ $seo->page_keyword ?? $global_setting->page_keyword }}">
    <meta name="robots" content="index, follow">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="language" content="English">
    <meta name="revisit-after" content="1 days">
    <meta name="author" content="{{ $global_setting->site_name ?? '' }}">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="{{ $global_setting->website_full_address ?? '' }}">
    <meta property="og:title" content="{{ $seo->page_title ?? $global_setting->page_title }}">
    <meta property="og:description" content="{{ $seo->page_description ?? $global_setting->page_description }}">
    <meta property="og:image" content="{{ $seo->banner_image ?? '/uploads/icons/' . $global_setting->site_logo }}">

    <!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:url" content="{{ $global_setting->website_full_address ?? '' }}">
    <meta property="twitter:title" content="{{ $seo->page_title ?? $global_setting->page_title }}">
    <meta property="twitter:description" content="{{ $seo->page_description ?? $global_setting->page_description }}">
    <meta property="twitter:image"
        content="{{ $seo->banner_image ?? '/uploads/icons/' . $global_setting->site_logo }}">

    <!-----END SEO------->

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Employment Link Nepal Pvt. Ltd.</title>

    <!--== Favicon ==-->
    <link rel="shortcut icon" href="/website/images/favicon.png" type="image/x-icon" />

    <!--== Google Fonts ==-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400&display=swap"
        rel="stylesheet">

    <!--== All Magnific Popup CSS ==-->
    <link href="/website/css/magnific-popup.min.css" rel="stylesheet" />
    <!--== All Animate CSS ==-->
    <link href="/website/css/animate.min.css" rel="stylesheet" />
    <!--== All FontAwesome CSS ==-->
    <link href="/website/css/font-awesome.min.css" rel="stylesheet" />
    <!--== All Material Icons CSS ==-->
    <link href="/website/css/materialdesignicons.min.css" rel="stylesheet" />
    <!--== All Helper CSS ==-->
    <link href="/website/css/helper.min.css" rel="stylesheet" />
    <!--== All Revolution CSS ==-->
    <link href="/website/css/settings.css" rel="stylesheet" />
    <!--== All Slicknav CSS ==-->
    <link href="/website/css/slicknav.min.css" rel="stylesheet" />
    <!--== All Timeline CSS ==-->
    <link href="/website/css/timeline.css" rel="stylesheet" />
    <!--== All Slick Slider CSS ==-->
    <link href="/website/css/slick.min.css" rel="stylesheet" />
    <!--== All BootStrap CSS ==-->
    <link href="/website/css/bootstrap.min.css" rel="stylesheet" />
    <!--== Light Gallery CSS ==-->
    <link rel="stylesheet" href='https://cdn.rawgit.com/sachinchoolur/lightgallery.js/master/dist/css/lightgallery.css'>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!--== Main Style CSS ==-->
    <link href="/website/css/style.css" rel="stylesheet" />

</head>

<body>
    @if (Session::has('contact'))
        <script>
            Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: 'Sucessfully Applyed !!',
                showConfirmButton: false,
                timer: 1500
            })
        </script>
    @endif


    <!--== Start Header Area Wrapper ==-->
    <header class="header-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4 col-sm-6 col-12">
                    <!-- Start Logo Area -->
                    <div class="logo-area">
                        <a href="/"><img src="/uploads/icons/{{ $global_setting->site_logo }}"
                                alt="Employment-Logo"></a>
                    </div>
                    <!-- End Logo Area -->
                </div>

                <div class="col-lg-6 d-none d-lg-block">
                    <!-- Start Navigation Area -->
                    <div class="navigation-area">
                        <ul class="main-menu nav">
                            @foreach ($menus as $menu)
                                <li @if ($menu->childs->count() > 0) class = "has-submenu" @endif
                                    class="@if ($menu->childs->count() > 0) has-submenu @endif"><a
                                        href="@if($menu->nav_name=='Company') # @else /{{ $menu->nav_name }} @endif">{{ $menu->caption }}</a>
                                    @if ($menu->childs->count() > 0)
                                        <ul class="submenu-nav">
                                            @php $submenus = $menu->childs; @endphp

                                            @foreach ($submenus as $sub)
                                                <li><a
                                                        href="/{{ $menu->nav_name }}/{{ $sub->nav_name }}">{{ $sub->caption }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    @endif
                                </li>
                            @endforeach

                        </ul>


                    </div>
                    <!-- End Navigation Area -->
                </div>
                <div class="col-lg-2 col-sm-6 col-12">
                    <!-- Start Header Action Area -->
                    <div class="header-action text-end">
                        <!-- <a href="tel:00199823568658" class="tel-no">+998 23568 658</a> -->
                        <button class="btn-cog">
                            <!-- <i class="fa fa-cog"></i> -->Apply Now
                        </button>
                        <button class="btn-menu d-lg-none"><i class="fa fa-bars"></i></button>
                    </div>
                    <!-- End Header Action Area -->
                </div>
            </div>
        </div>
    </header>

    @yield('content')
    <!--== End Header Area Wrapper ==-->

    <!--------------------Start Slider Area Wrapper --------------->

    <!-----------------Start About Area Wrapper -------------->

    <!-----------------Job List Area Wrapper ------------>

    <!----------------- Start statistics Area Wrapper -------------->

    <!----------------- Job Categories Area Wrapper ------------->

    <!----------------- Start Testimonial Area Wrapper ------------>

    <!------------- Start clients Area Wrapper ---------->

    <!--== Start Footer Area Wrapper ==-->
    <footer class="footer-area">
        <div class="footer-widget-area">
            <div class="container">
                <div class="row mtn-40">
                    <div class="col-lg-4">
                        <div class="widget-item">
                            <div class="about-widget">
                                <a href="/"><img src="/uploads/icons/{{ $global_setting->site_logo }}"
                                        alt="Logo" /></a>
                                <p>QUALITY, HONESTY, INTEGRITY – These are terms that are synonymous with Employment
                                    Link Nepal (P) Ltd. bestowed onto our partners, and all endeavors we embark on.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-lg-2 ms-auto">
                        <div class="widget-item">
                            <h4 class="widget-title">Information</h4>
                            <div class="widget-body">
                                <ul class="widget-list">
                                    <li><a href="/">Home</a></li>

                                    @foreach ($normal_gallary_notice as $dat)
                                        <li><a href="{{ route('category', $dat->nav_name) }}">{{ $dat->caption }}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-lg-2 ms-auto">
                        <div class="widget-item">
                            <h4 class="widget-title">Quick Links</h4>
                            <div class="widget-body">
                                <ul class="widget-list">

                                    <li><a href="{{ $global_setting->facebook ?? '' }}" target="_blank">Facebook</a>
                                    </li>
                                    <li><a href="{{ $global_setting->twitter ?? '' }}" target="_blank">Twitter</a>
                                    </li>
                                    <li><a href="{{ $global_setting->youtube ?? '' }}" target="_blank">Youtube</a>
                                    </li>
                                    <li><a href="{{ $global_setting->linkedin ?? '' }}" target="_blank">Instagram</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-lg-3">
                        <div class="widget-item">
                            <h4 class="widget-title">Contact</h4>
                            <div class="widget-body">
                                <address>
                                    {{ $global_setting->website_full_address }} <br>
                                    <span>Tel:</span> <a
                                        href="tel:{{ $global_setting->phone }}">{{ $global_setting->phone }}</a> <a
                                        href="tel:{{ $global_setting->phone_ne }}">{{ $global_setting->phone_ne }}</a><br>
                                    <span>Email:</span>
                                    <a
                                        href="mailto:{{ $global_setting->site_email }}">{{ $global_setting->site_email }}</a>
                                    <a
                                        href="mailto:{{ $global_setting->page_description }}">{{ $global_setting->page_description }}</a>
                                </address>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="copyright-txt">
                    <p>&copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        Employment Link Nepal Pvt. Ltd. All Rights Reserved. Developed by <a
                            href="http://radiantnepal.com/" target="_blank">Radiant Infotech</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!--== End Footer Area Wrapper ==-->

    <!-- Scroll Top Button -->
    <button class="btn-scroll-top"><i class="mdi mdi-chevron-up"></i></button>


    <!-- Start Off Canvas Menu Wrapper -->
    <aside class="off-canvas-wrapper off-canvas-cog">
        <div class="off-canvas-overlay"></div>
        <div class="off-canvas-inner">
            <div class="close-btn">
                <button class="btn-close"><i class="mdi mdi-close"></i></button>
            </div>

            <!-- Start Off Canvas Content -->
            <div class="off-canvas-content mb-sm-30">
                <div class="off-canvas-item">
                    <div class="log-in-content-wrap">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <h2>Apply Form</h2>
                        <div class="login-form mtn-15">
                            <form action="{{ route('contactstore') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="form-input-item">
                                    <label for="name">Full Name</label>
                                    <input name="first_name" type="text" id="name">
                                </div>
                                <div class="form-input-item">
                                    <label for="number">Number</label>
                                    <input name="number" type="text" id="number">
                                </div>
                                <div class="form-input-item">
                                    <label for="email">Email</label>
                                    <input name="email" type="email" id="email" required>
                                </div>
                                <div class="form-input-item">
                                    <label for="file">Your CV</label>
                                    <input name="file" type="file" id="file">
                                </div>
                                <div class="form-input-item">
                                    <label for="message">Message</label>
                                    <textarea name="message" type="text" id="message" placeholder="Message..."
                                        style="width: 100%; min-height: 150px;"></textarea>
                                </div>
                                <div class="form-input-item">
                                    <button type="submit" class="btn-submit">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </aside>
    <!-- End Off Canvas Menu Wrapper -->


    <!-- Start Off Canvas Menu Wrapper -->
    <aside class="off-canvas-wrapper off-canvas-menu">
        <div class="off-canvas-overlay"></div>
        <div class="off-canvas-inner">
            <!-- Start Off Canvas Header -->
            <div class="close-btn">
                <button class="btn-close"><i class="mdi mdi-close"></i></button>
            </div>

            <!-- Start Off Canvas Content -->
            <div class="off-canvas-content">
                <div class="res-mobile-menu">

                </div>
            </div>
        </div>
    </aside>
    <!-- End Off Canvas Menu Wrapper -->


    <!--=======================Javascript============================-->
    <script src="/website/js/modernizr-3.6.0.min.js"></script>
    <script src="/website/js/jquery.min.js"></script>
    <script src="/website/js/jquery-migrate.min.js"></script>
    <script src="/website/js/popper.min.js"></script>
    <script src="/website/js/bootstrap.min.js"></script>
    <script src="/website/js/plugins/waypoint.min.js"></script>
    <script src="/website/js/plugins/counterup.min.js"></script>
    <script src="/website/js/plugins/instafeed.min.js"></script>
    <script src="/website/js/plugins/jquery.appear.js"></script>
    <script src="/website/js/plugins/jquery.slicknav.min.js"></script>
    <script src="/website/js/plugins/parallax.min.js"></script>
    <script src="/website/js/plugins/slick.min.js"></script>
    <script src="/website/js/plugins/magnific-popup.min.js"></script>

    <!-- gllery js -->
    <script src="/website/js/gallery/picturefill.min.js"></script>
    <script src="/website/js/gallery/lightgallery.js"></script>
    <script src="/website/js/gallery/lg-pager.js"></script>
    <script src="/website/js/gallery/lg-autoplay.js"></script>
    <script src="/website/js/gallery/lg-fullscreen.js"></script>
    <script src="/website/js/gallery/lg-zoom.js"></script>
    <script src="/website/js/gallery/lg-hash.js"></script>
    <script src="/website/js/gallery/lg-share.js"></script>

    <script>
        lightGallery(document.getElementById('lightgallery'));
    </script>

    <!--=== Active Js ===-->
    <script src="/website/js/active.min.js"></script>

    <!-- REVOLUTION JS FILES -->
    <script src="/website/js/revslider/jquery.themepunch.tools.min.js"></script>
    <script src="/website/js/revslider/jquery.themepunch.revolution.min.js"></script>


    <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
    <script src="/website/js/revslider/extensions/revolution.extension.actions.min.js"></script>
    <script src="/website/js/revslider/extensions/revolution.extension.carousel.min.js"></script>
    <script src="/website/js/revslider/extensions/revolution.extension.kenburn.min.js"></script>
    <script src="/website/js/revslider/extensions/revolution.extension.layeranimation.min.js"></script>
    <script src="/website/js/revslider/extensions/revolution.extension.migration.min.js"></script>
    <script src="/website/js/revslider/extensions/revolution.extension.navigation.min.js"></script>
    <script src="/website/js/revslider/extensions/revolution.extension.parallax.min.js"></script>
    <script src="/website/js/revslider/extensions/revolution.extension.slideanims.min.js"></script>
    <script src="/website/js/revslider/extensions/revolution.extension.video.min.js"></script>

    <!--=== REVOLUTION JS ===-->
    <script src="/website/js/revslider/rev-active.js"></script>

</body>

</html>
