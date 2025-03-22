@extends('layouts.app')

@section('title')
    
    <title>{{$item->basic_page_title}}</title>

@endsection
    

@section('body')

    
    <section class="non banner" style="background-image: url('{{Voyager::image($item->basic_banner)}}')">
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
                        {{$item->basic_page_title}}
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

      
    <section class="resources p-1">
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


    <section class="home__gallery">
        <div class="homeGallery__wrap">
            @foreach($global_images as $img)
            <div class="homeGallery_image"><img src="{{Voyager::image($img->img)}}" alt=""></div>
            @endforeach
        </div>
    </section>


@endsection