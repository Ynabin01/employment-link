@extends("layouts.master")

@section("content")

@include('website.page_type.banner')

<section class="latest_news news-page">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-4 col-sm-12">
					<div class="outer-box">
              <a href="newsdetails">
                  <div class="box" style="background-image: url(/website/images/news-1.png)">
                      <div class="box-overlay">
                          <h3>Problems as we grow older.</h3>
                      </div>
                  </div>
              </a>
          </div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-12">
					<div class="outer-box">
              <a href="newsdetails">
                  <div class="box" style="background-image: url(/website/images/news-2.png)">
                      <div class="box-overlay">
                          <h3>Covid Vaccination</h3>
                      </div>
                  </div>
              </a>
          </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-12">
      	<div class="outer-box">
            <a href="newsdetails">
                <div class="box" style="background-image: url(/website/images/news-3.png)">
                    <div class="box-overlay">
                        <h3>World Health Day</h3>
                    </div>
                </div>
            </a>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-12">
      	<div class="outer-box">
            <a href="newsdetails">
                <div class="box" style="background-image: url(/website/images/news-4.png)">
                    <div class="box-overlay">
                        <h3>Health Issues of Nepal</h3>
                    </div>
                </div>
            </a>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-12">
      	<div class="outer-box">
            <a href="newsdetails">
                <div class="box" style="background-image: url(/website/images/news-5.png)">
                    <div class="box-overlay">
                        <h3>Mens Mental Health</h3>
                    </div>
                </div>
            </a>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-12">
      	<div class="outer-box">
            <a href="newsdetails">
                <div class="box" style="background-image: url(/website/images/news-6.png)">
                    <div class="box-overlay">
                        <h3>Women Health</h3>
                    </div>
                </div>
            </a>
        </div>
      </div>
		</div>
	</div>
</section>

@endsection
