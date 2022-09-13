@extends('layouts.master')

@section('content')
@include('website.breadcrumb')

    <!--== Start Contact Page Area Wrapper ==-->
    <div class="contact-page-area-wrapper sp-y-bottom">
        <div class="container">
            <div class="contact-content-wrap">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="contact-form-area contact-method">
                            <h3>Send us a Message</h3>

                            <div class="contact-form-wrap">
                                <form action="{{ route('contactstore') }}" method="post" id="contact-form"
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
                                                    <input type="email" name="email_address" placeholder="Email address *"
                                                        required />
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="single-input-item">
                                                <label>
                                                    <input type="text" name="phone_no" placeholder="Your Phone" />
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <div class="single-input-item">
                                                <label for="con_message" class="sr-only m-0"></label>
                                                <textarea name="con_message" id="con_message" cols="30" rows="7" placeholder="Message *" required></textarea>
                                            </div>

                                            <div class="single-input-item mb-0 mt-40">
                                                <button class="btn-outline">Send Message</button>
                                            </div>

                                            <div class="form-message"></div>
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
                                        Narayan Gopal Tower, Maharajgunj Kathmandu, Nepal <br>
                                        <span>Tel:</span> <a href="tel:014372698">+977-1-4372698,</a> <a
                                            href="tel:014371365">4371365,</a> <a href="tel:015901956">5901956</a><br>
                                        <span>Email:</span>
                                        <a href="mailto:employmentlinknepal@gmail.com">employmentlinknepal@gmail.com,</a>
                                        <a href="mailto:info@employmentlinknepal.com">info@employmentlinknepal.com</a>
                                    </address>
                                </div>
                                <div class="member-social-icons mt-30">
                                    <a href="#"><i class="mdi mdi-facebook"></i></a>
                                    <a href="#"><i class="mdi mdi-twitter"></i></a>
                                    <a href="#"><i class="mdi mdi-linkedin"></i></a>
                                    <a href="#"><i class="mdi mdi-pinterest"></i></a>
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
