<div class="job-list-area sm-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-xl-5 m-auto text-center">
                <div class="section-title section-title--dark">
                    <h6>Recent Jobs</h6>
                    <h2 class="mb-0">List of Demands</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        @foreach ($job_categories as $cat)
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="job-box">
                    <figure><img src="{{ $cat->banner_image }}"></figure>
                    <a href="jobdetail">
                        <div class="job-content">
                            <h5>{{ $cat->caption }}<span>{{ $cat->caption }}</span></h5>
                            <p><i class="fa fa-industry"></i>@php echo $cat->short_content  @endphp</p>
                            <p><i class="fa fa-map-marker"></i>@php echo $cat->long_content  @endphp</p>
                        </div>
                    </a>
                    <button class="btn-cog">Apply Now</button>
                </div>
            </div>
        </div>
        @endforeach
        <div class="view-all-button">
            <a href="/job-seeker/all-jobs">View All</a>   
        </div>
    </div>
</div>
