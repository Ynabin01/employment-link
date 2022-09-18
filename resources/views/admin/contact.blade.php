{{-- @extends('layouts.master')
    @section('contents')
       
			<!--
			=====================================================
				Google Map
			=====================================================
			-->
			<!-- Google Map -->
			<div class="google-map-two">
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7065.511178424314!2d85.281466!3d27.693948!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe25fdd5d858e0cbe!2sKalanki%20Bus%20Stop!5e0!3m2!1sen!2snp!4v1657622982275!5m2!1sen!2snp" width="100%" height="368px" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>


			<!-- 
			=============================================
				Conatct us Section
			============================================== 
			-->
			<div class="contact-us-section section-spacing">
				<div class="container">
					<div class="theme-title-one">
						<h2>GET IN TOUCH</h2>
					</div> <!-- /.theme-title-one -->
					<div class="clearfix main-content no-gutters row">
						<div class="col-lg-5 col-12"><div class="img-box"></div></div>
						<div class="col-lg-7 col-12">
							<div class="form-wrapper">
								<form action="{{route('contactstore')}}" method="POST" class="theme-form-one form-validation" autocomplete="on" enctype='multipart/form-data'>
									 @csrf	
								<div class="row">
										<div class="col-sm-6 col-12"><input type="text" placeholder="Name *" name="name"></div>
										<div class="col-sm-6 col-12"><input type="text" placeholder="Phone *" name="number"></div>
										<div class="col-sm-6 col-12"><input type="email" placeholder="Email *" name="email"></div>
										<div class="col-12"><textarea placeholder="Message" name="message"></textarea></div>
									</div> <!-- /.row -->
									<button type="submit" class="theme-button-one">Submit</button>
								</form>
							</div> <!-- /.form-wrapper -->
						</div> <!-- /.col- -->
					</div> <!-- /.main-content -->
				</div> <!-- /.container -->

				<!--Contact Form Validation Markup -->
				<!-- Contact alert -->
				<div class="alert-wrapper" id="alert-success">
					<div id="success">
						<button class="closeAlert"><i class="fa fa-times" aria-hidden="true"></i></button>
						<div class="wrapper">
			               	<p>Your message was sent successfully.</p>
			             </div>
			        </div>
			    </div> <!-- End of .alert_wrapper -->
			    <div class="alert-wrapper" id="alert-error">
			        <div id="error">
			           	<button class="closeAlert"><i class="fa fa-times" aria-hidden="true"></i></button>
			           	<div class="wrapper">
			               	<p>Sorry!Something Went Wrong.</p>
			            </div>
			        </div>
			    </div> <!-- End of .alert_wrapper -->
			</div> <!-- /.contact-us-section -->
        @include("website.partner")
@endsection --}}




@extends('layouts.master')

@section('content')
<!--== Start Page Header Area ==-->
<div class="breadcrumb-area">
    <div class="container">
        <ol class="default-breadcrumb">
            <li class="crumb">
              <div class="link"><a href="/" class="fa fa-home"></a></div>
            </li>
            <li class="crumb active">
                <div class="link"><span aria-current="location">Contact us</span></div>
            </li>
        </ol>
    </div>
</div>
<!--== End Page Header Area ==-->

    <!--== Start Contact Page Area Wrapper ==-->
    <div class="contact-page-area-wrapper sp-y-bottom">
        <div class="container">
            <div class="contact-content-wrap">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="contact-form-area contact-method">
                            <h3>Send us a Message</h3>

                            <div class="contact-form-wrap">
                                <form action="{{ route('contactstore') }}" method="post" 
                                    enctype='multipart/form-data'>
                                    @csrf

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="single-input-item">
                                                <label>
                                                    <input type="text" name="first_name" placeholder="First Name *"
                                                        required />
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="single-input-item">
                                                <label>
                                                    <input type="text" name="last_name" placeholder="Last Name *"
                                                        required />
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="single-input-item">
                                                <label>
                                                    <input type="email" name="email" placeholder="Email address *"
                                                        required />
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="single-input-item">
                                                <label>
                                                    <input type="text" name="number" placeholder="Your Phone" />
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <div class="single-input-item">
                                                <label for="con_message" class="sr-only m-0"></label>
                                                <textarea name="message" id="con_message" cols="30" rows="7" placeholder="Message " ></textarea>
                                            </div>

                                            <div class="single-input-item mb-0 mt-40">
                                                <button class="btn-outline">Send Message</button>
                                            </div>
											@if(Session::has('contact'))
											<p class="alert alert-info">{{ Session::get('contact') }}</p>
											@endif
										
                                            
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="contact-information contact-method">
                            <div class="contact-info-con">
                                <h3>Contact Info</h3>

                                <div class="widget-item m-0">
                                    <address>
                                        {{ $global_setting->website_full_address }} <br>
                                        <span>Tel:</span> <a href="tel:{{ $global_setting->phone }}">{{ $global_setting->phone }}</a> <a
                                            href="tel:{{ $global_setting->phone_ne }}">{{ $global_setting->phone_ne }}</a><br>
                                        <span>Email:</span>
                                        <a href="mailto:{{ $global_setting->site_email }}">{{ $global_setting->site_email }}</a>
                                        <a href="mailto:{{ $global_setting->page_description }}">{{ $global_setting->page_description }}</a>
                                    </address>
                                </div>
                                <div class="member-social-icons mt-30">
                                    <a href="{{ $global_setting->facebook ?? '' }}" target="_blank"><i class="mdi mdi-facebook"></i></a>
                                    <a href="{{ $global_setting->twitter ?? '' }}" target="_blank"><i class="mdi mdi-twitter"></i></a>
                                    <a href="{{ $global_setting->linkedin ?? '' }}" target="_blank"><i class="mdi mdi-linkedin"></i></a>
                                    {{-- <a href="#"><i class="mdi mdi-pinterest"></i></a> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>
    <!--== End Contact Page Area Wrapper ==-->

    <div class="map-area sp-y-bottom">
        <div class="container">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14127.858302894398!2d85.3282289!3d27.71838!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xabee521107ca8be3!2sEmployment%20Link%20Nepal%20P.%20Ltd.!5e0!3m2!1sen!2snp!4v1660811498653!5m2!1sen!2snp"
                width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
@endsection
