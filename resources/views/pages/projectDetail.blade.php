@extends('layouts.app')

@section('title')   
    <title>{{$item->title}}</title>
@endsection
    

@section('body') 


    <section class="content__detail p-1">
        <div class="uk-container uk-container-small">
            <h1>{{$item->title}}</h1>
            <div class="date uk-text-center uk-margin-large-bottom">{{date('F d, Y',strtotime($item->date))}}</div>
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
               <div class="sub__content uk-margin-medium-top">
                    <div class="uk-grid">
                            <div class="uk-width-2-3@m">
                                <h3>A home to a diverse population</h3>
                                <p>
                                    Barju Rural Municipality in Sunsari District, Nepal, is home to a diverse population, including the marginalized Musahar community residing in Ward No. 3. The Musahar community, historically one of the most disadvantaged and vulnerable groups in Nepal, faces significant challenges in terms of health, education, and economic opportunities. Their traditional means of livelihood, primarily based on manual labor and subsistence farming, have limited their access to better living conditions. Recognizing these challenges, this project aims to address critical areas such as health, nutrition, economic empowerment, and education, with a comprehensive and inclusive approach. 
                                </p>
                                <div class="cta">
                                    <div class="inCard dark">
                                        <a href=".pdf">Explore</a>
                                    </div>
                                </div>
                            </div>
                            <div class="uk-width-1-3@m">
                                <img src="https://hapsaglobe.org/uploads/hik-1.png?1623138657274" alt="">
                            </div>
                    </div>
               </div>
               <div class="sub__content uk-margin-medium-top">
                    <div class="uk-grid">
                            <div class="uk-width-2-3@m">
                                <h3>Delivered over 1000 sanitation kits</h3>
                                <p>
                                As of now, we have successfully delivered over 1000 sanitation kits to the affected families through our local distribution partners and with the help of collaborating organizations like Nepal Rising for 500 kits and rest by Gofundme campaign led by Dr. Ramu Kharel, founder of HAPSA from the USA. With our unwavering dedication to providing crucial relief, we have set an ambitious goal of reaching at least 40,000 families in the coming days, recognizing the urgency and scale of the challenges faced by the people.
                                </p>
                                <div class="cta">
                                    <div class="inCard dark">
                                        <a href=".pdf">Explore</a>
                                    </div>
                                </div>
                            </div>
                            <div class="uk-width-1-3@m">
                                <img src="https://hapsaglobe.org/uploads/1untitled9.png?1707136732663" alt="">
                            </div>
                    </div>
               </div>
            </div>

            <div class="projectGallery_slider uk-margin-medium-top uk-position-relative">
                <div class="swiper projectsGallery uk-margin">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="projectsGallery__image">
                                <img src="/images/document.jpg">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="projectsGallery__image">
                                <img src="/images/homebanner_adjusted1.jpg">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="projectsGallery__image">
                                <img src="/images/gallery.jpg">
                            </div>
                        </div>
                        <div class="swiper-slide"> 
                            <div class="projectsGallery__image">
                                <img src="/images/homebanner_adjusted2.jpg">
                            </div>
                        </div>
                        <div class="swiper-slide">  
                            <div class="projectsGallery__image">
                                <img src="/images/homebanner_adjusted3.jpg">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="projectsGallery__image">
                                <img src="/images/gallery.jpg">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-button-prev projectsGallerynav"></div>
                <div class="swiper-button-next projectsGallerynav"></div>
            </div>
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