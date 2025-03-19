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
            
            <section class="resources p-12">
                <div class="uk-container">
                    <h2>Resources and Publications</h2>
                    <ul class="resources_list uk-list uk-margin-medium-top">
                        <li>
                            <a href="./images/HAPSA CPR Report.pdf" target="_blank">
                                HAPSA CPR Report
                            </a>
                        </li>
                        <li>
                            <a href="https://pubmed.ncbi.nlm.nih.gov/39885975/" target="_blank">
                                The association between the type of bystander and survival after an out-of-hospital cardiac arrest: A French nationwide study - PubMed
                            </a>
                        </li>
                        <li>
                            <a href="https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0316950" target="_blank">
                                Prevalence, outcome and conduct of in-hospital cardiopulmonary resuscitation in government hospitals of Nepal
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
    </section>

    @endsection