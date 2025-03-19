@extends('layouts.app')

@section('title')
    
    <title>Gallery | Hapsa Globe</title>

@endsection
    

@section('body')

    
    <section class="non banner" style="background-image: url('{{asset('images/earthquakerelief7.jpg')}}')">
        <div class="overlay"></div>
        <div class="uk-container">
            <div class="bannerText">
                <div class="text">
                    <ul class="breadcrumb uk-flex">
                        <li>
                            <a href="/">Home</a>
                            <span uk-icon="icon: chevron-right"></span>
                        </li>
                        <li>
                            Gallery
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>


    <section class="videogallery uk-margin-xlarge-top">
        <div class="uk-container">
            <h1>Video Gallery</h1>
            <div class="uk-grid uk-child-width-1-3@s">
                @foreach($videos as $vid)
                <div class="video__wrap uk-margin-medium-top">
                    <div class="overlay">
                        <iframe src="{{$vid->link}}"  allowfullscreen uk-responsive uk-video="automute: true; autoplay: hover"></iframe>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>


    <section class="gallery p-1">
        <div class="uk-container">
            <h1>Photo Gallery</h1>
            <div class="gallerySection__wrap">
                @foreach($images as $img)
                <div class="gallerySection uk-margin-large-top">
                    <div class="uk-position-relative" uk-slideshow="animation: fade; autoplay: true; autoplay-interval: 4000">
    
                        <div class="uk-slideshow-items">
                            @foreach(json_decode($img->images) as $item)
                            <div>
                                <img src="{{Voyager::image($item)}}" alt="" uk-cover>
                            </div>
                            @endforeach
                        </div>
                    
                        <div class="uk-position-bottom-center uk-position-small">
                            <ul class="uk-thumbnav">
                            @foreach(json_decode($img->images) as $item)
                                <li uk-slideshow-item="{{$loop->iteration}}"><a href="#"><img src="{{Voyager::image($item)}}" width="100" height="67" alt=""></a></li>
                            @endforeach
                            </ul>
                        </div>
                    
                    </div>
    
                    <div class="figCaption uk-margin-medium-top uk-text-center">
                        <h3>{{$img->title}}</h3>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection