@extends('dashboard.layout.app')
@section('title', 'Add User')

@section('content')

<div class="content-page">
    <div class="container-fluid">

        <!-- Page Header -->
        <div class="page-title-head d-flex align-items-center">
            <div class="flex-grow-1">
                <h4 class="fs-sm text-uppercase fw-bold m-0">
                    <i class="fa fa-user-plus me-2 text-primary"></i> Add User
                </h4>
            </div>
            <div class="text-end">
                <ol class="breadcrumb m-0 py-0">
                    <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('user.list') }}">Users</a></li>
                    <li class="breadcrumb-item active">Add User</li>
                </ol>
            </div>
        </div>

        <!-- User Form Section -->
        <div class="row justify-content-center my-4">
            <div class="col-lg-8 col-md-10">
                <div class="card shadow-sm border-0">
                    <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                        <div class="d-flex align-items-center">
                            <i class="fa fa-user-plus me-2"></i>
                            <h5 class="mb-0">Add User</h5>

            <div id="successMessage" class="alert alert-success alert-dismissible fade show mb-3 d-none"  style="margin-left: 20px;align-items: center;">
            <i class="fa fa-check-circle me-2"></i>
            <span id="successText"></span>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>


                        </div>
                        <!-- Action Buttons -->
                        <div class="d-flex gap-2">
                            <a href="javascript:history.back()" class="btn btn-danger btn-sm">
                                <i class="fa fa-arrow-left me-1"></i> Back
                            </a>
                            <a href="javascript:location.reload()" class="btn btn-warning btn-sm">
                                <i class="fa fa-sync me-1"></i> Reload
                            </a>
                           
                        </div>
                    </div>
                    <div class="card-body">
                        <!-- Add User Form -->
                   
                        
<form id="addUser" action="{{ route('user.store') }}" method="POST" novalidate enctype="multipart/form-data">
    @csrf

    <!-- Name -->
   <!-- Name -->
<div class="mb-3">
    <label for="name" class="form-label fw-bold">Name <span class="text-danger">*</span></label>
    <input type="text" 
           class="form-control" 
           id="name" 
           name="name" 
           value="{{ old('name') }}"
           placeholder="Enter name" 
           required>
    <span id="name-error" class="text-danger error"></span>
</div>

<!-- Email -->
<div class="mb-3">
    <label for="email" class="form-label fw-bold">Email Address <span class="text-danger">*</span></label>
    <input type="email" 
           class="form-control" 
           id="email" 
           name="email" 
           value="{{ old('email') }}"
           placeholder="Enter email" 
           required>
    <span id="email-error" class="text-danger error"></span>
</div>

<!-- Phone -->
<div class="mb-3">
    <label for="phone" class="form-label fw-bold">Contact Number <span class="text-danger">*</span></label>

    <input type="text" 
       class="form-control" 
       id="phone" 
       name="phone" 
       value="{{ old('phone') }}"
       placeholder="Enter contact number" 
       required 
       pattern="\d*" 
       inputmode="numeric"
       maxlength="15"
       oninput="this.value = this.value.replace(/[^0-9]/g, '')">
   
    <span id="phone-error" class="text-danger error"></span>
</div>

<!-- Place -->
<div class="mb-3">
    <label for="place" class="form-label fw-bold">Place <span class="text-danger">*</span></label>
    <input type="text" 
           class="form-control" 
           id="place" 
           name="place" 
           value="{{ old('place') }}"
           placeholder="Enter place" 
           required>
    <span id="place-error" class="text-danger error"></span>
</div>



<div class="mb-3">
    <label for="address" class="form-label fw-bold">Address <span class="text-danger">*</span></label>
    <textarea 
        class="form-control" 
        id="address" 
        name="address" 
        rows="3" 
        placeholder="Enter full address" 
        required>{{ old('address') }}</textarea>
    <span id="address-error" class="text-danger error"></span>
</div>

<div class="mb-3">
    <label for="blood" class="form-label fw-bold">Blood Group <span class="text-danger">*</span></label>
    <input type="text" 
           class="form-control" 
           id="blood" 
           name="blood" 
           value="{{ old('blood') }}"
           placeholder="Enter Blood Group" 
           required>
    <span id="blood-error" class="text-danger error"></span>
</div>


<div class="mb-3">
    <label for="date_of_birth" class="form-label fw-bold">Date of Birth <span class="text-danger">*</span></label>
    <input type="text" 
           class="form-control" 
           id="date_of_birth" 
           name="date_of_birth" 
           value="{{ old('date_of_birth') }}" data-provider="flatpickr"  data-date-format="Y-m-d"
           required>
    <span id="date_of_birth-error" class="text-danger error"></span>
</div>

<div class="mb-3">
    <label for="join_date" class="form-label fw-bold">Joining Date<span class="text-danger">*</span></label>
    <input type="text" 
           class="form-control" 
           id="join_date" 
           name="join_date" 
           value="{{ old('join_date') }}"  data-provider="flatpickr"  data-date-format="Y-m-d"
           required>
    <span id="join_date-error" class="text-danger error"></span>
</div>



<div class="mb-3">
    <label for="profile_picture" class="form-label fw-bold">Profile Picture <span class="text-danger">*</span></label>
    <input type="file" 
           class="form-control" 
           id="profile_picture" 
           name="profile_picture" 
           accept="image/*" 
           required>
    <span id="profile_picture-error" class="text-danger error"></span>
</div>



<!-- Role -->
<div class="mb-3">
    <label for="role" class="form-label fw-bold">Role <span class="text-danger">*</span></label>
    <select id="role" 
            name="role" 
            class="form-select" 
            required>
        <option value="">-- Select Role --</option>
        <option value="3" {{ old('role') == 3 ? 'selected' : '' }}>Executive</option>
        <option value="2" {{ old('role') == 2 ? 'selected' : '' }}>Sub Admin</option>
    </select>
    <span id="role-error" class="text-danger error"></span>
</div>

<!-- Password -->
<div class="mb-4">
    <label for="password" class="form-label fw-bold">Password <span class="text-danger">*</span></label>
    <input type="password" 
           class="form-control" 
           id="password" 
           name="password" 
           placeholder="Enter password"
           required>
    <span id="password-error" class="text-danger error"></span>
</div>


    <!-- Submit -->
    <div class="text-end">
        <button type="submit" class="btn btn-success">
            <i class="fa fa-save me-1"></i> Add User
        </button>
    </div>
</form>


                        <!-- End Form -->
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>





<link rel="stylesheet" href="{{ asset('assets/plugins/daterangepicker/daterangepicker.css')}}" type="text/css">





<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
   $('#addUser').on('submit', function (e) {
    e.preventDefault();

    var form = $(this)[0]; // Get the form DOM element
    var formData = new FormData(form); // Create FormData object

    $.ajax({
        url: '{{ route('user.store') }}',
        type: 'POST',
        data: formData,
        processData: false, // Important for file upload
        contentType: false, // Important for file upload
        cache: false,
        success: function (response) {
            if (response.success) {
                $('#successMessage')
                    .removeClass('d-none alert-danger')
                    .addClass('alert alert-success')
                    .fadeIn();
                $('#successText').text(response.success);
                $('html, body').animate({
                    scrollTop: $("#successMessage").offset().top - 100
                }, 500);
                $('#addUser')[0].reset();
                $('.form-control').removeClass('is-invalid');
                $('.error').text('');

                setTimeout(function () {
                    window.location.href = response.redirect_url;
                }, 2500);
            }
        },
        error: function (xhr) {
            if (xhr.status === 422) {
                var errors = xhr.responseJSON.errors;
                $('.error').text('');
                $('.form-control').removeClass('is-invalid');

                $.each(errors, function (key, value) {
                    $('#' + key).addClass('is-invalid');
                    $('#' + key + '-error').text(value[0]);
                });
            }
        }
    });
});

</script>



@endsection
