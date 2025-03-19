<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Photo;
use App\Faq;
use App\Testimonial;
use View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
      
        $data['global_images'] = Photo::orderBy('order')->get();
        $data['faqs'] = Faq::find(1);
        $data['testimonial'] = Testimonial::find(1);
        View::share($data);
    }
}
