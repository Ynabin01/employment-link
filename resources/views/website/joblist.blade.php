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
        <div class="row align-items-center">
            @if (isset($jobs))
                @foreach ($jobs as $job)
                    <div class="col-sm-6">
                        <div class="job-box">
                            <figure><img src="{{ $job->banner_image }}"></figure>
                            <a href="jobdetail">
                                <div class="job-content">
                                    <h5>{{ $job->caption }}<span>{{ $job->span }}</span></h5>
                                    <p><i class="fa fa-industry"></i>{{ $job->short_content }}</p>
                                    <p><i class="fa fa-map-marker"></i>{{ $job->long_content }}</p>
                                </div>
                            </a>
                            <button class="btn-cog">Apply Now</button>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
        <div class="view-all-button">
            <a href="/job-seeker/all-jobs">View All</a>
        </div>
    </div>
</div>
