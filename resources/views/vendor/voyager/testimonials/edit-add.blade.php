@php
$edit = !is_null($dataTypeContent->getKey());
$add = is_null($dataTypeContent->getKey());
@endphp 

@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        .profile td input {
            font-size: 13px !important;
        }

        .btn {
            text-decoration: none !important;
        }

        .mt-5 {
            margin-top: 20px;
        }

        .mb-5 {
            margin-bottom: 20px;
        }

        .mb-0 {
            margin-bottom: 5px;
        }

        .tags {
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start;
            margin-top: 7px;
        }

        .single-tag {
            padding: 3px 3px 3px 6px;
            font-size: 13px;
            border-radius: 4px;
            border: #006eab solid 1px;
            background: #22a7f0;
            color: #ffff;
            margin-right: 10px;
            cursor: copy;
            margin-top: 4px;
        }

        .delete-tag {
            cursor: pointer;
            padding: 7px;
        }
         /* Three image containers (use 25% for four, and 50% for two, etc) */
        .column {
          float: left;
          width: 15%;
          padding: 5px;
        }
        
        /* Clear floats after image containers */
        .row::after {
          content: "";
          clear: both;
          display: table;
        }

    </style>
@stop

@section('page_title', __('voyager::generic.' . ($edit ? 'edit' : 'add')) . ' Testimonials')

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.' . ($edit ? 'edit' : 'add')) . ' Testimonials' }}
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content edit-add container-fluid" id="app">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">
                    <!-- form start -->
                    <form role="form" class="form-edit-add" method="POST" enctype="multipart/form-data">
                        <!-- PUT Method if we are editing -->
                        @if ($edit)
                            {{ method_field('PUT') }}
                        @endif

                        <!-- CSRF TOKEN -->
                        {{ csrf_field() }}

                        <div class="panel-body">

                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            <!-- Adding / Editing -->
                            @php
                                $dataTypeRows = $dataType->{$edit ? 'editRows' : 'addRows'};
                            @endphp

                            <div class="form-group  col-md-12 ">
                                <label class="control-label" for="name">Title</label>
                                <input type="text" class="form-control" v-model="formData.title">
                            </div>   

                            <div class="form-group  col-md-12 ">
                                <label class="control-label" for="name">Intro</label>
                                <vue-ckeditor :editor="editor" v-model="formData.intro"
                                                            :config="editorConfig">
                                                        </vue-ckeditor>
                            </div>  

                            <div class="form-group  col-md-12 ">
                                <label class="control-label" for="name">Description</label>
                                <vue-ckeditor :editor="editor" v-model="formData.description"
                                                            :config="editorConfig">
                                                        </vue-ckeditor>
                            </div> 
                            
                            <!-- Testimonials -->
                            <div class="form-group  col-md-12 ">
                                <label class="control-label" for="name">Testimonials</label>
                                <table @class('table table-bordered') style="margin-bottom: 0px">
                                    <template>
                                        <tbody is="draggable" tag="tbody" v-model="formData.testimonials.body"
                                            v-on:start="drag=true" v-on:end="drag=false" handle=".handle" v-bind="dragOptions">
                                            <transition-group type="transition" :name="!drag ? 'flip-list' : null">
                                                <tr class="profile" v-for="(item,index) in formData.testimonials.body">
                                                    <td><span class="handle btn btn-info"><i class="voyager-handle"></i></span>
                                                    </td>
                                                    <td style="width:25%;"><textarea placeholder="Title" type="text" :ref="`Testimonial${index+1}`"
                                                            class="form-control" rows="4" cols="30"
                                                            v-model="item.name"></textarea></td>
                                                    <td style="width:60%;">
                                                        <vue-ckeditor :editor="editor" v-model="item.message"
                                                            :config="editorConfig">
                                                        </vue-ckeditor>
                                                    </td>
                                                    <td style="width:5%;"><a tabindex="-1" class="btn btn-danger"
                                                            style="margin-top: 4px" v-on:click="deleteTestimonial(index)">x</a>
                                                    </td>
                                                </tr>
                                            </transition-group>
                                        </tbody>
                                    </template>
                                </table>
                                <a tabindex="-1" class="btn btn-success" v-on:click="addTestimonial">Add Testimonial</a>

                            </div>

                        </div><!-- panel-body -->

                        <div class="panel-footer">
                        @section('submit-buttons')
                            <a v-on:click="submitForm"
                                class="btn btn-primary submitButton save">{{ __('voyager::generic.save') }}</a>
                        @stop
                        @yield('submit-buttons')
                    </div>
                </form>

                <iframe id="form_target" name="form_target" style="display:none"></iframe>
                <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
                    enctype="multipart/form-data" style="width:0;height:0;overflow:hidden">
                    <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
                    <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
                    {{ csrf_field() }}
                </form>

            </div>
        </div>
    </div>
</div>

<div class="modal fade modal-danger" id="confirm_delete_modal">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"><i class="voyager-warning"></i> {{ __('voyager::generic.are_you_sure') }}
                </h4>
            </div>

            <div class="modal-body">
                <h4>{{ __('voyager::generic.are_you_sure_delete') }} '<span class="confirm_delete_name"></span>'</h4>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                    data-dismiss="modal">{{ __('voyager::generic.cancel') }}</button>
                <button type="button" class="btn btn-danger"
                    id="confirm_delete">{{ __('voyager::generic.delete_confirm') }}</button>
            </div>
        </div>
    </div>
</div>
<!-- End Delete File Modal -->
@stop

@section('javascript')
<script>  
    @if(Session::has('success'))  
        toastr.success("{{ Session('success') }}");  
    @endif  
    </script> 
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.js"></script>
<script src="{{ asset('assets/js/plugins/@ckeditor/ckeditor5-build-classic/build/ckeditor.js') }}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"
integrity="sha512-bZS47S7sPOxkjU/4Bt0zrhEtWx0y0CRkhEp8IckzK+ltifIIE9EMIMTuT/mEzoIMewUINruDBIR/jJnbguonqQ=="
crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="//cdn.jsdelivr.net/npm/sortablejs@1.8.4/Sortable.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Vue.Draggable/2.24.3/vuedraggable.umd.js"
integrity="sha512-MPl1xjL9tTTJHmaWWTewqTJcNxl2pecJ0D0dAFHmeQo8of+F9uF7zb2bazCX7m45K3mKRg44L1xJDeFzjmjRtA=="
crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="{{ asset('assets/js/plugins/@ckeditor/ckeditor5-vue2/dist/ckeditor.js') }}"></script>

<script>
    let previousUrl = "/admin/testimonials";
    let edit = parseInt('{{ $edit }}');
    let app = new Vue({
        el: '#app',
        components: {
            'vue-draggable': vuedraggable,
            'vue-ckeditor': CKEditor.component
        },
        data: {
            editor: ClassicEditor,
            editorData: '',
            editorConfig: {
                // The configuration of the editor.
                autoGrow_maxHeight: 600

            },
            formData: {
                title: '',
                intro: '',
                description:'',
                testimonials: {
                    title: 'Testimonials',
                    body: []
                }
            },
            drag: false
        },
        computed: {
            dragOptions() {
                return {
                    animation: 200,
                    group: "description",
                    disabled: false,
                    ghostClass: "ghost"
                };
            }
        },
        created() {
            if (edit) {
                var that = this;
                this.formData = this.decodeArray(@json($dataTypeContent))
            }
        },
        methods: {
            decodeArray(obj) {
                var toBeEncoded = ['testimonials'];
                toBeEncoded.forEach(function(key) {
                    obj[key] = JSON.parse(obj[key]);
                })
                return obj;
            },
            addTestimonial(e) {
                e.preventDefault();
                this.formData.testimonials.body.push({
                    name: '',
                    message: ''
                })
                this.$nextTick(() => {
                    this.$refs[`Testimonial${this.formData.testimonials.body.length}`][0]
                        .focus()
                })
            },
            deleteTestimonial(index) {
                this.formData.testimonials.body.splice(index, 1);
                this.$nextTick(() => {
                    this.$refs[`Testimonial${index+1}`][0].focus()
                })
            },
            submitForm(e) {
                e.preventDefault();
                e.target.disabled = true;
                e.target.innerText = "Please Wait..";
                var formData = new FormData();
                formData.append('nonImageData', JSON.stringify(this.formData))
                axios.post('/admin/submit-testimonials', formData).then(function(res) {
                    e.target.disabled = false;
                    e.target.innerText = "Save";
                    window.location.replace(previousUrl);
                }).catch(function(errors) {
                    e.target.disabled = false;
                    e.target.innerText = "Save";
                });
            }
        }
    });
</script>


<script>
    var params = {};
    var $file;

    function deleteHandler(tag, isMulti) {
        return function() {
            $file = $(this).siblings(tag);

            params = {
                slug: '{{ $dataType->slug }}',
                filename: $file.data('file-name'),
                id: $file.data('id'),
                field: $file.parent().data('field-name'),
                multi: isMulti,
                _token: '{{ csrf_token() }}'
            }

            $('.confirm_delete_name').text(params.filename);
            $('#confirm_delete_modal').modal('show');
        };
    }

    $('document').ready(function() {
        $('.toggleswitch').bootstrapToggle();

        //Init datepicker for date fields if data-datepicker attribute defined
        //or if browser does not handle date inputs
        $('.form-group input[type=date]').each(function(idx, elt) {
            if (elt.hasAttribute('data-datepicker')) {
                elt.type = 'text';
                $(elt).datetimepicker($(elt).data('datepicker'));
            } else if (elt.type != 'date') {
                elt.type = 'text';
                $(elt).datetimepicker({
                    format: 'L',
                    extraFormats: ['YYYY-MM-DD']
                }).datetimepicker($(elt).data('datepicker'));
            }
        });

        @if ($isModelTranslatable)
            $('.side-body').multilingual({"editing": true});
        @endif

        $('.side-body input[data-slug-origin]').each(function(i, el) {
            $(el).slugify();
        });

        $('.form-group').on('click', '.remove-multi-image', deleteHandler('img', true));
        $('.form-group').on('click', '.remove-single-image', deleteHandler('img', false));
        $('.form-group').on('click', '.remove-multi-file', deleteHandler('a', true));
        $('.form-group').on('click', '.remove-single-file', deleteHandler('a', false));

        $('#confirm_delete').on('click', function() {
            $.post('{{ route('voyager.' . $dataType->slug . '.media.remove') }}', params, function(
                response) {
                if (response &&
                    response.data &&
                    response.data.status &&
                    response.data.status == 200) {

                    toastr.success(response.data.message);
                    $file.parent().fadeOut(300, function() {
                        $(this).remove();
                    })
                } else {
                    toastr.error("Error removing file.");
                }
            });

            $('#confirm_delete_modal').modal('hide');
        });
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>
@stop
