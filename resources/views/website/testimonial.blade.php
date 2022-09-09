<div class="testimonial-area bg-offwhite sm-top">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="section-title mb-0">
                    <h6>TESTIMONIALS</h6>
                    <h2>What <br>They’re Saying</h2>
                    <p><strong>Quality, Honesty, Integrity</strong> </p>
                </div>

                <div class="testimonial-carousel-dots"></div>
            </div>

            <div class="col-lg-6 ms-auto">
                <div class="testimonial-content-wrap">
                    <div class="testimonial-content">
                        @if (isset($testimonial))
                            <!-- Start Testimonial Item -->
                            @foreach ($testimonial as $test)
                                <div class="testimonial-item">
                                    <div class="testimonial-thumb">
                                        <img src="{{ $test->banner_image }}" alt="Employment" />
                                    </div>

                                    <div class="testimonial-txt">
                                        <img src="website/img/icons/quote.png" alt="Employment" />
                                        <p>{{ $test->short_content }}</p>
                                        <h5 class="client-name">{{ $test->caption }}</h5>
                                    </div>
                                </div>
                            @endforeach
                            <!-- End Testimonial Item -->
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
