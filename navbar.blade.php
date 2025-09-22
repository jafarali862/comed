@php
$user = Auth::user();
@endphp
<header class="app-topbar">
        <div class="container-fluid topbar-menu">
        <div class="d-flex align-items-center gap-2">
        <!-- Topbar Brand Logo -->
        <div class="logo-topbar">
        <!-- Logo light -->
        <!-- <a href="index.html" class="logo-light">
        <span class="logo-lg">
        <img src="assets/images/logo.png" alt="logo">
        </span>
        <span class="logo-sm">
        <img src="assets/images/logo-sm.png" alt="small logo">
        </span>
        </a> -->

        <!-- Logo Dark -->

        <!-- <a href="index.html" class="logo-dark">
        <span class="logo-lg">
        <img src="assets/images/logo-black.png" alt="dark logo">
        </span>
        <span class="logo-sm">
        <img src="assets/images/logo-sm.png" alt="small logo">
        </span>
        </a> -->

        </div>

        <!-- Sidebar Menu Toggle Button -->
        <button class="sidenav-toggle-button btn btn-primary btn-icon">
        <i class="ti ti-menu-4 fs-22"></i>
        </button>

        <!-- Horizontal Menu Toggle Button -->
        <button class="topnav-toggle-button px-2" data-bs-toggle="collapse" data-bs-target="#topnav-menu-content">
        <i class="ti ti-menu-4 fs-22"></i>
        </button>

        <!-- Search -->
        <!-- <div class="app-search d-none d-xl-flex">
        <input type="search" class="form-control topbar-search" name="search" placeholder="Search for something...">
        <i data-lucide="search" class="app-search-icon text-muted"></i>
        </div> -->

        <div class="app-search d-none d-xl-flex">
    <div id="currentDateTime" class="form-control topbar-search text-center fw-bold"></div>
   
</div>

        <!-- Mega Menu Dropdown -->
        <div class="topbar-item d-none d-md-flex">
        <div class="dropdown">
       
        <div class="dropdown-menu dropdown-menu-xxl p-0">
        <div class="h-100" style="max-height: 380px;" data-simplebar>
        <div class="row g-0">
        <div class="col-12">
        <div class="p-3 text-center bg-light bg-opacity-50">
        <h4 class="mb-0 fs-lg fw-semibold">Welcome to <span class="text-primary">Insurance</span></h4>
        </div>
        </div>
        </div>
        <div class="row g-0">
        <div class="col-md-4">
        <div class="p-3">
        <h5 class="mb-2 fw-semibold fs-sm dropdown-header">Dashboard & Analytics</h5>
        <ul class="list-unstyled megamenu-list">
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Sales Dashboard</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Marketing Dashboard</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Finance Overview</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">User Analytics</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Traffic Insights</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Performance Metrics</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Conversion Tracking</a>
        </li>
        </ul>
        </div>
        </div>

        <div class="col-md-4">
        <div class="p-3">
        <h5 class="mb-2 fw-semibold fs-sm dropdown-header">Project Management</h5>
        <ul class="list-unstyled megamenu-list">
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Task Overview</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Kanban Board</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Gantt Chart</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Team Collaboration</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Project Milestones</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Workflow Automation</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Timesheets & Reports</a>
        </li>
        </ul>
        </div>
        </div>

        <div class="col-md-4">
        <div class="p-3">
        <h5 class="mb-2 fw-semibold fs-sm dropdown-header">User Management</h5>
        <ul class="list-unstyled megamenu-list">
        <li>
        <a href="javascript:void(0);" class="dropdown-item">User Profiles</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Access Control</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Role Permissions</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Activity Logs</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Security Settings</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">User Groups</a>
        </li>
        <li>
        <a href="javascript:void(0);" class="dropdown-item">Authentication & Login</a>
        </li>
        </ul>
        </div> <!-- end dropdown-->
        </div> <!-- end col-->
        </div> <!-- end row-->

        </div> <!-- end .h-100-->
        </div> <!-- .dropdown-menu-->
        </div> <!-- .dropdown-->
        </div> <!-- end topbar-item -->
        </div> <!-- .d-flex-->

        <div class="d-flex align-items-center gap-2">
        <!-- Language Dropdown -->
        

        <!-- Messages Dropdown -->
       
        <!-- Notification Dropdown -->
       

        <div class="topbar-item">
                        <div class="dropdown">
                            <button class="topbar-link dropdown-toggle drop-arrow-none" data-bs-toggle="dropdown" data-bs-offset="0,22" type="button" data-bs-auto-close="outside" aria-haspopup="false" aria-expanded="false">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" data-lucide="bell" class="lucide lucide-bell fs-xxl"><path d="M10.268 21a2 2 0 0 0 3.464 0"></path><path d="M3.262 15.326A1 1 0 0 0 4 17h16a1 1 0 0 0 .74-1.673C19.41 13.956 18 12.499 18 8A6 6 0 0 0 6 8c0 4.499-1.411 5.956-2.738 7.326"></path></svg>
                                <span class="badge badge-square text-bg-warning topbar-badge"> {{ \App\Models\User::where('login_request', 1)->count() }}</span>
                            </button>

                           <div class="dropdown-menu p-0 dropdown-menu-end dropdown-menu-lg" data-popper-placement="bottom-end" style="position: absolute; inset: 0px 0px auto auto; margin: 0px; transform: translate(0px, 44px);">
                                <div class="px-3 py-2 border-bottom">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <h6 class="m-0 fs-md fw-semibold">Notifications</h6>
                                        </div>
                                        <div class="col text-end">
                                            <a href="#!" class="badge text-bg-light badge-label py-1">{{ \App\Models\User::where('login_request', 1)->count() }}  Alerts</a>
                                        </div>
                                    </div>
                                </div>
    @php
    use Carbon\Carbon;
    $users = \App\Models\User::where('login_request', 1)->get();
@endphp

                                <div data-simplebar class="simplebar-scrollable-y">
    <div class="simplebar-content">
        @foreach($users as $user)
            <div class="dropdown-item notification-item py-2 text-wrap" id="notification-{{ $user->id }}">
                <span class="d-flex gap-2">
                    <span class="avatar-md flex-shrink-0">
                <span class="avatar-title bg-danger-subtle text-danger rounded fs-22">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                         viewBox="0 0 24 24" fill="none" stroke="currentColor"
                         stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                         data-lucide="server-crash" class="lucide lucide-server-crash fs-xl fill-danger">
                        <path d="M6 10H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-2"></path>
                        <path d="M6 14H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2h-2"></path>
                        <path d="M6 6h.01"></path>
                        <path d="M6 18h.01"></path>
                        <path d="m13 6-4 6h6l-4 6"></path>
                    </svg>
                </span>
            </span>
                    <span class="flex-grow-1 text-muted">
                        <span class="fw-medium text-body">{{ $user->name }} Approval Request</span>
                        <br>
                        <span class="fs-xs">{{ \Carbon\Carbon::parse($user->created_at)->diffForHumans() }}</span>
                    </span>
                    <button type="button" class="flex-shrink-0 text-muted btn btn-link p-0" 
                            data-dismissible="#notification-{{ $user->id }}">
                        <i class="ti ti-xbox-x-filled fs-xxl"></i>
                    </button>
                </span>
            </div>
        @endforeach
    </div>
</div>

                                <div data-simplebar class="simplebar-scrollable-y">
                                    <div class="simplebar-wrapper" style="margin: 0px;">
                                        <div class="simplebar-height-auto-observer-wrapper">
                                            <div class="simplebar-height-auto-observer">

                                            </div>
                                        </div>
                                        <div class="simplebar-mask">
                                            <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                                                <div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: auto; overflow: hidden scroll;">
                                                    <div class="simplebar-content" style="padding: 0px;">
                                    <!-- item 1 -->
                            




                                    <!-- item 2 -->
                                  

                                    <!-- item 3 -->
                               

                                    <!-- item 4 -->
                                  

                                    <!-- item 5 -->
                               

                                    <!-- item 6 -->
                               
                                    <!-- item 7 -->
                                 

                                    <!-- item 8 -->
                                   

                                    <!-- item 9 -->
                                

                                    <!-- item 10 -->
                                  

                                    <!-- item 11 -->
                                 

                                    <!-- item 12 -->
                               
                                    <!-- item 13 -->
                              

                                    <!-- item 14 -->
                               
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="simplebar-placeholder" style="width: 318px; height: 865px;">

                    </div>
                </div>
                                
                                <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
                                    <div class="simplebar-scrollbar" style="width: 0px; display: none;">

                                    </div>
                                </div>
                                <div class="simplebar-track simplebar-vertical" style="visibility: visible;">
                                    <div class="simplebar-scrollbar" style="height: 104px; display: block; transform: translate3d(0px, 0px, 0px);">

                                    </div>
                                </div>
                            </div> <!-- end dropdown-->

                         
                              

                            </div>
                        </div>
                    </div>

        <!-- Button Trigger Customizer Offcanvas -->
       

        <!-- Light/Dark Mode Button -->
        <div class="topbar-item d-none d-sm-flex">
        <button class="topbar-link" id="light-dark-mode" type="button">
        <i data-lucide="moon" class="fs-xxl mode-light-moon"></i>
        <i data-lucide="sun" class="fs-xxl mode-light-sun"></i>
        </button>
        </div>

        <!-- User Dropdown -->
        <div class="topbar-item nav-user">
        <div class="dropdown">
        <a class="topbar-link dropdown-toggle drop-arrow-none px-2" data-bs-toggle="dropdown" data-bs-offset="0,16" href="#!" aria-haspopup="false" aria-expanded="false">
        <img src="{{ asset('dashboard/img/undraw_profile.svg') }}" width="32" class="rounded-circle me-lg-2 d-flex" alt="user-image">
        <div class="d-lg-flex align-items-center gap-1 d-none">
        <h5 class="my-0">{{ $user->name }}</h5>
        <i class="ti ti-chevron-down align-middle"></i>
        </div>
        </a>
        <div class="dropdown-menu dropdown-menu-end">
        <!-- Header -->
        <div class="dropdown-header noti-title">
        <h6 class="text-overflow m-0">Welcome back!</h6>
        </div>

        <!-- My Profile -->
        <!-- <a href="pages-profile.html" class="dropdown-item">
        <i class="ti ti-user-circle me-2 fs-17 align-middle"></i>
        <span class="align-middle">Profile</span>
        </a> -->

       

        <!-- Logout -->
       <a href="javascript:void(0);" 
   class="dropdown-item text-danger fw-semibold" 
   data-bs-toggle="modal" 
   data-bs-target="#logoutModal">
    <i class="ti ti-logout-2 me-2 fs-17 align-middle"></i>
    <span class="align-middle">Log Out</span>
</a>


        </div>

        </div>
        </div>
        </div>
        </div>
        </header>

<script>
function updateDateTime() {
    const now = new Date();

    let d = String(now.getDate()).padStart(2, '0');
    let m = String(now.getMonth() + 1).padStart(2, '0'); // Months are 0-based
    let y = now.getFullYear();

    let h = now.getHours();
    let ampm = h >= 12 ? 'PM' : 'AM';
    h = h % 12;
    h = h ? h : 12; // 0 should be 12
    let min = String(now.getMinutes()).padStart(2, '0');
    let s = String(now.getSeconds()).padStart(2, '0');

    const formatted = `${d}-${m}-${y} ${h}:${min}:${s} ${ampm}`;
    document.getElementById('currentDateTime').textContent = formatted;
}

// Initial call and update every second
updateDateTime();
setInterval(updateDateTime, 1000);
</script>

<!-- <script src="{{ asset('assets/js/vendors.min.js') }}"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> -->

