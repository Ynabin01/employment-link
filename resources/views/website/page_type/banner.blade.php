<section class="page-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h6>{{$slug_detail1->caption ?? $slug_detail->caption}}</h6>
                </div>
                <div class="col-md-6">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="/">Home</a></li>
                       
                            <li>
                                @if(isset($slug_detail1))   <a href="/{{$slug_detail['nav_name']}}"> @endif @if(isset($slug_detail1)) {{$slug_detail['caption']}} @else <span>{{$slug_detail['caption']}}</span> @endif @if(isset($slug_detail)) </a> @endif</li>
                        
                        @if(isset($slug_detail1))
                            <li><span>{{$slug_detail1['caption']}}</span></li>
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </section>