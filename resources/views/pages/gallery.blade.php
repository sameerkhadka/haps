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
                <div class="galleryVideo__wrap uk-margin-medium-top">
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
            <div class="gallerySection__wrap uk-margin-large-top">
                <div class="galleryImage__section uk-margin-xlarge-bottom">
                    <div class="uk-child-width-1-2@s uk-child-width-1-3@m" uk-grid="masonry: pack">
                        <div>
                            <div class="uk-card uk-card-default uk-flex uk-flex-center uk-flex-middle">
                                <img src="/images/document.jpg" alt="">
                            </div>
                        </div>
                        <div>
                            <div class="uk-card uk-card-default uk-flex uk-flex-center uk-flex-middle">
                                <img src="/images/homebanner_adjusted2.jpg" alt="">
                            </div>
                        </div>
                        <div>
                            <div class="uk-card uk-card-default uk-flex uk-flex-center uk-flex-middle">
                                <img src="/images/homebanner_adjusted1.jpg" alt="">
                            </div>
                        </div>
                        <div>
                            <div class="uk-card uk-card-default uk-flex uk-flex-center uk-flex-middle">
                                <img src="/images/gallery.jpg" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="figCaption uk-margin-medium-top uk-text-center">
                        <h3>Image Title</h3>
                    </div>
                </div>
                <div class="galleryImage__section uk-margin-xlarge-bottom">
                    <div class="uk-child-width-1-2@s uk-child-width-1-3@m" uk-grid="masonry: pack">
                        <div>
                            <div class="uk-card uk-card-default uk-flex uk-flex-center uk-flex-middle">
                                <img src="/images/document.jpg" alt="">
                            </div>
                        </div>
                        <div>
                            <div class="uk-card uk-card-default uk-flex uk-flex-center uk-flex-middle">
                                <img src="/images/homebanner_adjusted2.jpg" alt="">
                            </div>
                        </div>
                        <div>
                            <div class="uk-card uk-card-default uk-flex uk-flex-center uk-flex-middle">
                                <img src="/images/homebanner_adjusted1.jpg" alt="">
                            </div>
                        </div>
                        <div>
                            <div class="uk-card uk-card-default uk-flex uk-flex-center uk-flex-middle">
                                <img src="/images/gallery.jpg" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="figCaption uk-margin-medium-top uk-text-center">
                        <h3>Image Title</h3>
                    </div>
                </div>
            </div>
            
        </div>
    </section>
@endsection