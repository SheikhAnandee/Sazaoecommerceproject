<div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
    <div class="card border">
        <div class="card-body">
            <form action="{{route('admin.homepage-banner-section-three')}}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <h5>banner one</h5>
                <div class="form-group">
                    <label for="">Status</label>
                    <br>
                    <label class="custom-switch mt-2">
                        <input type="checkbox" {{@$homepage_section_banner_three->banner_one->status == 1 ? 'checked':''}} name="banner_one_status" class="custom-switch-input" >
                        {{-- <input type="checkbox" name="banner_one_status" class="custom-switch-input" > --}}
                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>
                <div class="form-group">
                    <img src="{{asset(@$homepage_section_banner_three->banner_one->banner_image)}}" alt="" width="150px">
                    {{-- <img src="" alt="" width="150px"> --}}

                </div>
                <div class="form-group">

                    <label>Banner Image</label>
                    <input type="file" class="form-control" name="banner_one_image" value="">
                    <input type="hidden" class="form-control" name="banner_one_old_image" value="{{@$homepage_section_banner_three->banner_one->banner_image}}">
                    {{-- <input type="hidden" class="form-control" name="banner_one_old_image" value=""> --}}

                </div>
                <div class="form-group">
                    <label>Banner url</label>
                    <input type="text" class="form-control" name="banner_one_url" value="{{@$homepage_section_banner_three->banner_one->banner_url}}">
                    {{-- <input type="text" class="form-control" name="banner_one_url" value=""> --}}

                </div>
                <hr>
                <h5>banner two</h5>
                <div class="form-group">
                    <label for="">Status</label>
                    <br>
                    <label class="custom-switch mt-2">
                        <input type="checkbox" {{@$homepage_section_banner_three->banner_two->status == 1 ? 'checked':''}} name="banner_two_status" class="custom-switch-input" >
                        {{-- <input type="checkbox" name="banner_two_status" class="custom-switch-input" > --}}

                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>
                <div class="form-group">
                    <img src="{{asset(@$homepage_section_banner_three->banner_two->banner_image)}}" alt="" width="150px">
                    {{-- <img src="" alt="" width="150px"> --}}

                </div>
                <div class="form-group">

                    <label>Banner Image</label>
                    <input type="file" class="form-control" name="banner_two_image" value="">
                    <input type="hidden" class="form-control" name="banner_two_old_image" value="{{@$homepage_section_banner_three->banner_two->banner_image}}">
                    {{-- <input type="hidden" class="form-control" name="banner_two_old_image" value=""> --}}

                </div>
                <div class="form-group">
                    <label>Banner url</label>
                    <input type="text" class="form-control" name="banner_two_url" value="{{@$homepage_seciton_banner_three->banner_two->banner_url}}">
                    {{-- <input type="text" class="form-control" name="banner_two_url" value=""> --}}

                </div>

                <h5>banner Three</h5>
                <div class="form-group">
                    <label for="">Status</label>
                    <br>
                    <label class="custom-switch mt-2">
                        <input type="checkbox" {{@$homepage_section_banner_three->banner_three->status == 1 ? 'checked':''}} name="banner_three_status" class="custom-switch-input" >
                        {{-- <input type="checkbox"  name="banner_three_status" class="custom-switch-input" > --}}

                        <span class="custom-switch-indicator"></span>
                    </label>
                </div>
                <div class="form-group">
                    <img src="{{asset(@$homepage_section_banner_three->banner_three->banner_image)}}" alt="" width="150px">
                    {{-- <img src="" alt="" width="150px"> --}}

                </div>
                <div class="form-group">

                    <label>Banner Image</label>
                    <input type="file" class="form-control" name="banner_three_image" value="">
                    <input type="hidden" class="form-control" name="banner_three_old_image" value="{{@$homepage_section_banner_three->banner_three->banner_image}}">
                    {{-- <input type="hidden" class="form-control" name="banner_three_old_image" value=""> --}}

                </div>
                <div class="form-group">
                    <label>Banner url</label>
                    <input type="text" class="form-control" name="banner_three_url" value="{{@$homepage_section_banner_three->banner_three->banner_url}}">
                    {{-- <input type="text" class="form-control" name="banner_three_url" value=""> --}}

                </div>

                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</div>
