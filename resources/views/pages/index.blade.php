@extends('layouts.app')

@section('title')
    
    <title>Hapsa Globe</title>

@endsection
    

@section('body')
    <div class="song__qr" uk-tooltip="title: Scan for CPR Song; delay: 200">
        <a href="{{$item->qr_link}}" target="_blank" >
            <img src="{{Voyager::image($item->qr)}}" alt="">
        </a>
    </div>

    <div class="video__wrap">
        <video src="/images/videoplayback.mp4" controls loop uk-video="autoplay: inview"></video>
        <div class="watch__video">
            <div class="cta">
                <a href="{{$item->banner_btn_link}}" target="_blank" class="btn">Watch on YouTube</a>
            </div>
        </div>
    </div>

    <section class="volunteer">
        <div class="uk-container">
            <div class="uk-width-2xlarge uk-margin-auto uk-text-center">
                <div class="uk-width">
                    <h2>{{$item->title}}</h2>
                    <span>
                        {{$item->text}}
                    </span>
                </div>
                <div class="uk-flex uk-flex-center uk-margin-top">
                    <div class="cta">
                        <a href="{{$item->btn_link}}" class="btn">{{$item->btn_title}}</a>
                    </div>
                </div>
                
            </div>
        </div>
    </section>


    <section class="intro p-1">
        <div class="uk-container">
            <div class="introSection__wrap">
                <div class="title">
                    <h1>{{$item->about_title}}</h1>
                </div>
                <div class="small__space"></div>
                <div class="long__content">
                    <p>
                       {{$item->about_text}}
                    </p>
                    <div class="cta">
                        <a href="{{$item->about_btn_link}}" class="btn">Explore</a>
                    </div>
                    <div class="sq__picture">
                        <img src="{{Voyager::image($item->about_img2)}}" alt="">
                    </div>
                </div>
                <div class="small__space"></div>
                <div class="right__content">
                    <div class="hr__picture">
                        <img src="{{Voyager::image($item->about_img1)}}" alt="">
                    </div>
                    <p>
                    {{$item->about_text2}}
                    </p>
                </div>
                <div class="small__space"></div>
            </div>
        </div>
    </section>


    <section class="homeHapsaProjects uk-margin-large-bottom">
        <div class="uk-container">
            <h2>{{$item->project_title}}</h2>
            <p>
            {{$item->project_text}}
            </p>
            <div class="projectsSlider__wrap">
                <div class="swiper home__projects uk-margin">
                    <div class="swiper-wrapper">
                        @foreach($projects as $pro)
                        <div class="swiper-slide">
                            <div class="uk-transition-toggle">  
                                <div class="project__card">
                                    <div class="projectCard__image">
                                        <img src="{{VOyager::image($pro->cover)}}">
                                    </div>
                                    <div class="uk-panel">
                                        <div class="uk-position-small uk-position-bottom uk-overlay sliderText">
                                            <h4>{{$pro->title}}</h4>
                                            <div class="cta">
                                                <div class="inCard">
                                                    <a href="/projects/{{$pro->slug}}">Explore</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="swiper-button-prev home__projectsnav">
                    <i class="fa-solid fa-arrow-left-long"></i>
                </div>
                <div class="swiper-button-next home__projectsnav">
                    <i class="fa-solid fa-arrow-right-long"></i>
                </div>
            </div>
        </div>
    </section>


    <section class="ongoing p-12">
        <div class="uk-container">
            <div  class="uk-text-center@s">
                <h2>{{$item->activities_title}}</h2>
                <p>
                {{$item->activities_text}}
                </p>
            </div>
            <div class="ongoing__activity uk-margin-large-top">
                <div class="uk-grid">
                    <div class="uk-width-2-5@s">
                        <div class="activity__info">
                            <h5 class="activity__title">
                            {{$item->activities_subtitle}}
                            </h4>
                            <p>
                            {{$item->activities_description}}
                            </p>
                        </div>
                    </div>
                    @if($item->activities_images && $item->activities_images != [])
                    <div class="uk-width-3-5@s">
                        <div class="gallerySection">
                            <div class="uk-position-relative" uk-slideshow="animation: fade; autoplay: false; autoplay-interval: 4000">

                                <div class="uk-slideshow-items">
                                    @foreach(json_decode($item->activities_images) as $img)
                                    <div>
                                        <img src="{{Voyager::image($img)}}" alt="" uk-cover>
                                    </div>
                                    @endforeach
                                </div>
                            
                                <div class="uk-position-bottom-center uk-position-small">
                                    <ul class="uk-thumbnav">
                                        @foreach(json_decode($item->activities_images) as $img)
                                        <li uk-slideshow-item="{{$loop->iteration}}"><a href="#"><img src="{{Voyager::image($img)}}" width="100" height="67" alt=""></a></li>
                                        @endforeach
                                        
                                    </ul>
                                </div>
                            
                            </div>
                        </div>
                        
                    </div>
                    @endif
                </div>
            </div>
        </div>
    </section>


    <!-- <section class="newsUpdates p-1">
        <div class="uk-container">
            <h2>{{$item->news_title}}</h2>
            <p>
            {{$item->news_text}}
            </p>

            <div class="newsUpdates__wrap uk-margin-medium-top uk-grid">
                <div class="uk-width-2-3@s">
                    <a href="{{$news[0]->link ? $news[0]->link : '/news/'.$news[0]->slug}}" class="post_section">
                        <div class="uk-card">
                            <div class="uk-card-media-top">
                                <img src="{{Voyager::image($news[0]->cover)}}" >
                            </div>
                            <div class="uk-card-body">
                                <div class="date">{{date('F d, Y',strtotime($news[0]->date))}}</div>
                                <div class="news__headline uk-text-truncate">{{$news[0]->title}}</div>
                                @if($news[0]->description)
                                <p>{{substr(strip_tags($news[0]->description), 0, 250)}}</p>
                                @endif
                            </div>
                        </div>
                    </a>
                </div>
                <div class="uk-width-1-3@s">
                    @foreach($news as $new)
                    @if($loop->first) @continue @endif
                    <a href="{{$new->link ? $new->link : '/news/'.$new->slug}}" class="post_section">
                        <div class="uk-card">
                            <div class="uk-card-media-top">
                                <img src="{{Voyager::image($new->cover)}}" >
                            </div>
                            <div class="uk-card-body">
                                <div class="date">{{date('F d, Y',strtotime($new->date))}}</div>
                                <div class="news__headline uk-text-truncate">{{$new->title}}</div>
                            </div>
                        </div>
                    </a>
                    @endforeach
                </div>
            </div>

            <div class="cta">
                <a class="btn" href="/news">Explore All</a>
            </div>
        </div>
    </section> -->


    <section class="home__gallery">
        <div class="homeGallery__wrap">
            @foreach($global_images as $img)
            <div class="homeGallery_image"><img src="{{Voyager::image($img->img)}}" alt=""></div>
            @endforeach
        </div>
    </section>
@endsection


    


