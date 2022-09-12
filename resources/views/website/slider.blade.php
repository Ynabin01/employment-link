<!--== Start Slider Area Wrapper ==-->
@if (isset($sliders))
    <div class="slider-area-wrapper">
        <div id="rev_slider_11_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container"
            data-alias="business-classic" data-source="gallery">
            <div id="rev_slider_11_1" class="rev_slider fullwidthabanner" data-version="5.4.7">
                <ul>
                    <!-- SLIDE  -->
                    @foreach ($sliders as $slider)
                        <li data-index="{{ $slider->id }}" data-transition="random-premium" data-slotamount="default"
                            data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default"
                            data-easeout="default" data-masterspeed="default" data-thumb="{{ $slider->banner_image }}"
                            data-rotate="0" data-saveperformance="off" data-title="Slide">
                            <!-- MAIN IMAGE -->
                            <img src="{{ $slider->banner_image }}" alt="Employment" data-bgposition="center center"
                                data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="15" class="rev-slidebg"
                                data-no-retina>
                            <!-- LAYERS -->

                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption tp-resizeme slide-heading"
                                data-x="[center','center','center','center']"
                                data-y="['center','center','center','center']" data-fontsize="['60','60','50','30']"
                                data-fontweight="['600']" data-lineheight="['70','70','60','40']"
                                data-width="['650','650','600','320']" data-height="none" data-whitespace="normal"
                                data-type="text" data-responsive_offset="on"
                                data-frames='[{"delay":10,"split":"lines","splitdelay":0.1,"speed":600,"split_direction":"forward","frame":"0","from":"x:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                                data-textAlign="['center']">
                                {{ $slider->caption }}
                            </div>
                        </li>
                    @endforeach
                </ul>
                <div class="tp-bannertimer tp-bottom"></div>
            </div>
        </div>
    </div>
@endif
<!--== End Slider Area Wrapper ==-->
