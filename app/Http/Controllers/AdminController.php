<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

use App\Faq;
use App\Testimonial;

class AdminController extends Controller
{
    private function encodeArray($arr,$toBeEncoded){
        foreach($toBeEncoded as $key){
            $arr[$key] = json_encode($arr[$key]);
        }
        return $arr;
    }

    public function addUpdateFaq(Request $request){
        $nonImageData = json_decode($request->nonImageData,true);
        $toBeEncoded = ['faqs'];
        $finalData = $this->encodeArray($nonImageData,$toBeEncoded);
        if(isset($finalData['id']))
        {
            $package = Faq::find($finalData['id']);
            Faq::find($finalData['id'])->update($finalData);
        }
        else 
        {
            
            $package = Faq::create($finalData); 
        }
        Session::flash('success','Feature Updated Successfully');
        return response(['msg'=>"Feature Updated Successfully"],200);
    }

    public function addUpdateTestimonial(Request $request){
        $nonImageData = json_decode($request->nonImageData,true);
        $toBeEncoded = ['testimonials'];
        $finalData = $this->encodeArray($nonImageData,$toBeEncoded);
        if(isset($finalData['id']))
        {
            $package = Testimonial::find($finalData['id']);
            Testimonial::find($finalData['id'])->update($finalData);
        }
        else 
        {
            
            $package = Testimonial::create($finalData); 
        }
        Session::flash('success','Feature Updated Successfully');
        return response(['msg'=>"Feature Updated Successfully"],200);
    }
}
