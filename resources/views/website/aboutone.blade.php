<div class="about-area-wrapper bg-offwhite">
    <div class="container">
        <div class="row align-items-lg-center">
            <div class="col-md-6 col-lg-5">
                <figure class="about-thumb">
                    <img src="{{$about->banner_image}}" alt="Employment-About"/>
                </figure>
            </div>

            <div class="col-md-6 col-lg-7">
                <div class="about-content">
                    <h6>ABOUT US</h6>
                    <h2>{{$about->caption ?? ''}}</h2>
                    <span class="about-since">{{$about->short_content ?? ''}}   </span>
                    <p>
                        {{$about->long_content ?? ''}}    
                    </p>
                    <a href="/about-us" class="btn-about">MORE DETAILS <i class="mdi mdi-chevron-double-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
