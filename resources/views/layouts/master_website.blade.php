<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <title>News Portal Nepal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/websites/css/style.min.css">
</head>
<body>
<!----yield('top-adx')----->
<!----yield('header')----->
<!-----yield('navbar')--->
<!----html---<body>---->
<!----top adz----->

  <!----body horizontal adz----->
  <!-----breaking news---->
 <!----body horizontal news--->
<!---top three news----->
   


<!------home section----->
@yield('home')

@php
  $global_setting = App\Models\GlobalSetting::getSetting()->first();
@endphp

<footer id="colophon" class="site-footer">
    <div class="upper-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div id="categories-4" class="widget widget_contact">
                        <figure><img src="/websites/images/footer-logo.png" alt=""/>
                        </figure>

                        <ul>
                            <li><a href="#" ><i class="fab fa-youtube "></i> {{$global_setting->site_name}}</a> </li>
                            <li><a href="#" ><i class="fab fa-facebook-square "></i> {{$global_setting->site_name}}</a> </li>
                            <li><a href="mailto:{{$global_setting->site_email}}" ><i class="fas fa-envelope "></i> {{$global_setting->site_email}}</a> </li>

                            <li><a href="tel:" class=""><i class="fas fa-phone-volume"></i> {{$global_setting->phone}}</a>

                            </li>

                        </ul>

                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div id="categories-4" class="widget widget_contact">
                        <h2 class="widget-title">विविध</h2>
                        <ul>
                            <li><a href="#">हाम्रोबारे</a>
                            </li>
                            <li><a href="#">Privacy Policy</a>
                            </li>
                            <li><a href="#">विज्ञापन</a>

                            </li>
                            <li><a href="#"> प्रयोगका सर्त</a>
                            </li>
                        </ul>

                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <div id="categories-4" class="widget widget_contact">
                        <h2 class="widget-title">विविध</h2>
                        <ul>
                            <li><a href="#">हाम्रोबारे</a>
                            </li>
                            <li><a href="#">Privacy Policy</a>
                            </li>
                            <li><a href="#">विज्ञापन</a>

                            </li>
                            <li><a href="#"> प्रयोगका सर्त</a>
                            </li>
                        </ul>

                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12">
                    <div id="categories-4" class="widget widget_contact">
                        <h2 class="widget-title">विविध</h2>
                        <ul>
                            <li><a href="#">ब्लोअप</a>
                            </li>
                            <li><a href="#">ताजा समाचार</a>
                            </li>
                            <li><a href="#">पर्यटन</a>

                            </li>
                            <li><a href="#">बजार</a>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="lower-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <p class="copyright">© 2021 newsportal.sample.com सर्वाधिकार सुरक्षित</p>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <ul class="social-media">
                        <li>
                            <a href="#">
                                <i class="fab fa-facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-google"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-pinterest"></i>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <i class="fab fa-youtube"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <a href="#" class="back-to-top"><i class="icofont-thin-up"></i></a>
    </div>

</footer>

<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">पत्रकार बानियाँको मृत्युबारे अनुसन्धान गर्न माग</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <img src="/websites/images/photo-2.jpg" alt="" />
            </div>

        </div>
    </div>
</div>


<script src="/websites/js/vendor/jquery.min.js"></script>
<script src="/websites/js/vendor/bootstrap.js"></script>
<script src="/websites/js/vendor/owl.carousel.js"></script>
<script src="/websites/js/custom.js"></script>
<script>
    window.onscroll = function () {
        myFunction()
    };

    var header = document.getElementById("khabari-nav");
    var sticky = header.offsetTop;

    function myFunction() {
        if (window.pageYOffset > sticky) {
            header.classList.add("sticky-menu");
        } else {
            header.classList.remove("sticky-menu");
        }
    }
</script>
</body>

<!-- Mirrored from sample-news.demo.radiantnepal.com/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 06 Jul 2022 09:09:02 GMT -->
</html>