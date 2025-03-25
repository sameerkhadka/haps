@extends('layouts.app')

@section('title')   
    <title>{{$item->title}}</title>
@endsection
    

@section('body') 


    <section class="content__detail p-1">
        <div class="uk-container uk-container-small">
            <h1>{{$item->title}}</h1>
            @if($item->date)
            <div class="date uk-text-center uk-margin-large-bottom">{{date('F d, Y',strtotime($item->date))}}</div>
            @endif
            @if($item->quote)
            <div class="content__highlight">
                {{$item->quote}}
            </div>
            @endif
            @if($item->cover)
            <img src="{{Voyager::image($item->cover)}}" alt="">
            @endif
            <div class="main__content uk-margin-medium-top">
               {!!$item->description!!}
               @foreach($blogs as $blog)
               <div class="sub__content uk-margin-medium-top">
                    <div class="uk-grid">
                            <div class="uk-width-2-3@m">
                                <h3>{{$blog->title}}</h3>
                                <p>
                                    {{strip_tags($blog->description)}}
                                </p>
                                <div class="cta">
                                    <div class="inCard dark">
                                        <a href="{{$blog->link ?? '/project-blog/'.$blog->id}}" target="blank">Explore</a>
                                    </div>
                                </div>
                            </div>
                            <div class="uk-width-1-3@m">
                                <img src="{{Voyager::image($blog->image)}}" alt="">
                            </div>
                    </div>
               </div>
               @endforeach
            </div>

            @if($item->gallery || $item->galley!=[])
            <div class="projectGallery_slider uk-margin-medium-top uk-position-relative">
                <div class="swiper projectsGallery uk-margin">
                    <div class="swiper-wrapper">
                        @foreach(json_decode($item->gallery) as $img)
                        <div class="swiper-slide">
                            <div class="projectsGallery__image">
                                <img src="{{Voyager::image($img)}}">
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="swiper-button-prev projectsGallerynav"></div>
                <div class="swiper-button-next projectsGallerynav"></div>
            </div>
            @endif
        </div>
    </section>
            
    <section class="resources p-12 uk-margin-bottom">
        <div class="uk-container">
            <h2>Resources and Publications</h2>
            <div class="resources_card uk-margin-medium-top">
                <div class="uk-grid uk-child-width-1-3@m uk-child-width-1-2@s">
                    <div class="uk-transition-toggle">  
                        <div class="project__card">
                            <div class="projectCard__image">
                                <img src="/images/HAPSA CPR Report.png">
                            </div>
                            <div class="uk-panel">
                                <div class="uk-position-small uk-position-bottom uk-overlay cardTitle">
                                    <h4>HAPSA CPR Report</h4>
                                    <div class="cta">
                                        <div class="inCard">
                                            <a href="HAPSA CPR Report.pdf">Explore</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="uk-transition-toggle">  
                        <div class="project__card">
                            <div class="projectCard__image">
                                <img src="https://www.annemergmed.com/cms/asset/57aa5176-763e-4ad6-9e63-94a4a69c30c3/cov200h.gif">
                            </div>
                            <div class="uk-panel">
                                <div class="uk-position-small uk-position-bottom uk-overlay cardTitle">
                                    <h4>Jajarkot Earthquake Relief</h4>
                                    <div class="cta">
                                        <div class="inCard">
                                            <a href="project_detail.html">Explore</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="uk-transition-toggle">  
                        <div class="project__card">
                            <div class="projectCard__image">
                                <img src="/images/document.jpg">
                            </div>
                            <div class="uk-panel">
                                <div class="uk-position-small uk-position-bottom uk-overlay cardTitle">
                                    <h4>Pilot Training Program on Hands-Only CPR</h4>
                                    <div class="cta">
                                        <div class="inCard">
                                            <a href="https://www.researchgate.net/publication/378145438_Pilot_Training_Program_on_Hands-Only_CPR_and_Choking_First_Aid_for_Frontline_Police_Responders_in_Rural_Nepal">Explore</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @endsection