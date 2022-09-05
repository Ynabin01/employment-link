@extends('layouts.master')

@section('content')
      @include('website.page_type.banner')
    <section class="innner_detail">
        <div class="container">
            <div class="row">
                <div class="@if(isset($childs) && $childs->count()>0) col-xl-8 col-lg-7 @else col-xl-12 col-lg-12 @endif">
                    <div class="innner_detail_left">
                        <div class="innner_detail_content">
                            <p>{{$normal->short_content}}</p>
                            @php echo $normal->long_content; @endphp  
                            
                        </div>
                    </div>
                </div>
                @if(isset($childs) && $childs->count()>0)
                    <div class="col-xl-4 col-lg-5">
                        <div class="sidebar">
                            <div class="sidebar__single sidebar__category">
                                <ul class="list-unstyled side-baer-menu">
                                    @foreach($childs as $child)
                                        @if(isset($slug_detail1) && $child->nav_name==$slug_detail1->nav_name)
                                            <li class="active">{{$child->caption}}</li>
                                        @else
                                            <li><a href="/{{$slug_detail->nav_name}}/{{$child->nav_name}}">{{$child->caption}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                            <div class="download_file_box">
                                <a href="#"><i class="icon-pdf"></i>Government Policy & Rules</a>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
        </div>
    </section>
@endsection
