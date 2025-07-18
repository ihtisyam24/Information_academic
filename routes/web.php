<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ClassController;
use App\Http\Controllers\SubjectController;
use App\Http\Controllers\ClassSubjectController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\ParentController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\AssignClassTeacherController;
use App\Http\Controllers\ClassTimetableController;
use App\Http\Controllers\ExaminationsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
    //return view('welcome');
//});

Route::get('/', [AuthController::class, 'login']);
Route::post('login', [AuthController::class, 'Authlogin']);
Route::get('logout', [AuthController::class, 'logout']);
Route::get('forgot-password', [AuthController::class, 'forgotpassword']);
Route::post('forgot-password', [AuthController::class, 'PostForgotPassword']);
Route::get('reset/{token}', [AuthController::class, 'reset']);
Route::post('reset/{token}', [AuthController::class, 'PostReset']);




// admin route

Route::group(['middleware' => 'admin'], function () {

    Route::get('/admin/dashboard', [DashboardController::class, 'dashboard']);

    Route::get('/admin/admin/list', [AdminController::class, 'list']);
    Route::get('/admin/admin/add', [AdminController::class, 'add']);
    Route::post('/admin/admin/add', [AdminController::class, 'insert']);
    Route::get('/admin/admin/edit/{id}', [AdminController::class, 'edit']);
    Route::post('/admin/admin/edit/{id}', [AdminController::class, 'update']);
    Route::get('/admin/admin/delete/{id}', [AdminController::class, 'delete']);

    // teacher
    Route::get('/admin/teacher/list', [TeacherController::class, 'list']);
    Route::get('/admin/teacher/add', [TeacherController::class, 'add']);
    Route::post('/admin/teacher/add', [TeacherController::class, 'insert']);
    Route::get('/admin/teacher/edit/{id}', [TeacherController::class, 'edit']);
    Route::post('/admin/teacher/edit/{id}', [TeacherController::class, 'update']);
    Route::get('/admin/teacher/delete/{id}', [TeacherController::class, 'delete']);

    // Student
    Route::get('/admin/student/list', [StudentController::class, 'list']);
    Route::get('/admin/student/add', [StudentController::class, 'add']);
    Route::post('/admin/student/add', [StudentController::class, 'insert']);
    Route::get('/admin/student/edit/{id}', [StudentController::class, 'edit']);
    Route::post('/admin/student/edit/{id}', [StudentController::class, 'update']);
    Route::get('/admin/student/delete/{id}', [StudentController::class, 'delete']);

    // parent
    Route::get('/admin/parent/list', [ParentController::class, 'list']);
    Route::get('/admin/parent/add', [ParentController::class, 'add']);
    Route::post('/admin/parent/add', [ParentController::class, 'insert']);
    Route::get('/admin/parent/edit/{id}', [ParentController::class, 'edit']);
    Route::post('/admin/parent/edit/{id}', [ParentController::class, 'update']);
    Route::get('/admin/parent/delete/{id}', [ParentController::class, 'delete']);
    Route::get('/admin/parent/my_student/{id}', [ParentController::class, 'myStudent']);
    Route::get('admin/parent/assign_student_parent/{student_id}/{parent_id}', [ParentController::class, 'AssignStudentParent']);
    Route::get('admin/parent/assign_student_parent_delete/{student_id}', [ParentController::class, 'AssignStudentParentDelete']);

    // class url
    Route::get('/admin/class/list', [ClassController::class, 'list']);
    Route::get('/admin/class/add', [ClassController::class, 'add']);
    Route::post('/admin/class/add', [ClassController::class, 'insert']);
    Route::get('/admin/class/edit/{id}', [ClassController::class, 'edit']);
    Route::post('/admin/class/edit/{id}', [ClassController::class, 'update']);
    Route::get('/admin/class/delete/{id}', [ClassController::class, 'delete']);
    
    //admin/subject/list
    Route::get('/admin/subject/list', [SubjectController::class, 'list']);
    Route::get('/admin/subject/add', [SubjectController::class, 'add']);
    Route::post('/admin/subject/add', [SubjectController::class, 'insert']);
    Route::get('/admin/subject/edit/{id}', [SubjectController::class, 'edit']);
    Route::post('/admin/subject/edit/{id}', [SubjectController::class, 'update']);
    Route::get('/admin/subject/delete/{id}', [SubjectController::class, 'delete']);

    //assign_subject
    Route::get('/admin/assign_subject/list', [ClassSubjectController::class, 'list']);
    Route::get('/admin/assign_subject/add', [ClassSubjectController::class, 'add']);
    Route::post('/admin/assign_subject/add', [ClassSubjectController::class, 'insert']);
    Route::get('/admin/assign_subject/edit/{id}', [ClassSubjectController::class, 'edit']);
    Route::post('/admin/assign_subject/edit/{id}', [ClassSubjectController::class, 'update']);
    Route::get('/admin/assign_subject/delete/{id}', [ClassSubjectController::class, 'delete']);
    Route::get('/admin/assign_subject/edit_single/{id}', [ClassSubjectController::class, 'edit_single']);
    Route::post('/admin/assign_subject/edit_single/{id}', [ClassSubjectController::class, 'update_single']);


    // class_timetable
    Route::get('/admin/class_timetable/list', [ClassTimetableController::class, 'list']);
    Route::post('admin/class_timetable/get_subject', [ClassTimetableController::class, 'get_subject']);
    Route::post('admin/class_timetable/add', [ClassTimetableController::class, 'insert_update']);

   
    

    //admin/account
    Route::get('/admin/account', [UserController::class, 'MyAccount']);
    Route::post('/admin/account', [UserController::class, 'UpdateMyAccountAdmin']);

    // admin/change_password
    Route::get('/admin/change_password', [UserController::class, 'change_password']);
    Route::post('/admin/change_password', [UserController::class, 'update_change_password']);

    // assign_class_teacher
    Route::get('/admin/assign_class_teacher/list', [AssignClassTeacherController::class, 'list']);
    Route::get('/admin/assign_class_teacher/add', [AssignClassTeacherController::class, 'add']);
    Route::post('/admin/assign_class_teacher/add', [AssignClassTeacherController::class, 'insert']);
    Route::get('/admin/assign_class_teacher/edit/{id}', [AssignClassTeacherController::class, 'edit']);
    Route::post('/admin/assign_class_teacher/edit/{id}', [AssignClassTeacherController::class, 'update']);
    Route::get('/admin/assign_class_teacher/edit_single/{id}', [AssignClassTeacherController::class, 'edit_single']);
    Route::post('/admin/assign_class_teacher/edit_single/{id}', [AssignClassTeacherController::class, 'update_single']);
    Route::get('/admin/assign_class_teacher/delete/{id}', [AssignClassTeacherController::class, 'delete']);


    // exam
    Route::get('/admin/examinations/exam/list', [ExaminationsController::class, 'exam_list']);
    Route::get('/admin/examinations/exam/add', [ExaminationsController::class, 'exam_add']);
    Route::post('/admin/examinations/exam/add', [ExaminationsController::class, 'exam_insert']);
    Route::get('admin/examinations/exam/edit/{id}', [ExaminationsController::class, 'exam_edit']);
    Route::post('admin/examinations/exam/edit/{id}', [ExaminationsController::class, 'exam_update']);
    Route::get('admin/examinations/exam/delete/{id}', [ExaminationsController::class, 'exam_delete']);
    
    
    //exam schedule
    Route::get('admin/examinations/exam_schedule', [ExaminationsController::class, 'exam_schedule']);
    Route::post('admin/examinations/exam_schedule_insert', [ExaminationsController::class, 'exam_schedule_insert']);

    

});

// teacher route

Route::group(['middleware' => 'teacher'], function () {
    
    Route::get('/teacher/dashboard', [DashboardController::class, 'dashboard']);

    //teacher/account
    Route::get('/teacher/account', [UserController::class, 'MyAccount']);
    Route::post('/teacher/account', [UserController::class, 'UpdateMyAccount']);

    // mystudent
    Route::get('/teacher/my_student', [StudentController::class, 'MyStudent']);

    // teacher/change_password
    Route::get('/teacher/change_password', [UserController::class, 'change_password']);
    Route::post('/teacher/change_password', [UserController::class, 'update_change_password']);

    // my_class_subject
    Route::get('/teacher/my_class_subject', [AssignClassTeacherController::class, 'MyClassSubject']);

    // my_class_subject/class_timetable
    Route::get('/teacher/my_class_subject/class_timetable/{class_id}/{subject_id}', [ClassTimetableController::class, 'MyTimetableTeacher']);

    // teacher/my_exam_timetable
    Route::get('/teacher/my_exam_timetable', [ExaminationsController::class, 'MyExamTimetableTeacher']);
    
    
});


// student route

Route::group(['middleware' => 'student'], function () {

    Route::get('/student/dashboard', [DashboardController::class, 'dashboard']);

    //student/account
    Route::get('/student/account', [UserController::class, 'MyAccount']);
    Route::post('/student/account', [UserController::class, 'UpdateMyAccountStudent']);

    //student/my_subject
    Route::get('/student/my_subject', [SubjectController::class, 'MySubject']);

    //student/my_timetable
    Route::get('/student/my_timetable', [ClassTimetableController::class, 'MyTimetable']);

    //student/my_exam_timetable
    Route::get('/student/my_exam_timetable', [ExaminationsController::class, 'MyExamTimetable']);

    // student/change_password
    Route::get('/student/change_password', [UserController::class, 'change_password']);
    Route::post('/student/change_password', [UserController::class, 'update_change_password']);

   
    
    
});

// parent route

Route::group(['middleware' => 'parent'], function () {

    Route::get('/parent/dashboard', [DashboardController::class, 'dashboard']);

    //parent/account
    Route::get('/parent/account', [UserController::class, 'MyAccount']);
    Route::post('/parent/account', [UserController::class, 'UpdateMyAccountParent']);

    // parent/change_password
    Route::get('/parent/change_password', [UserController::class, 'change_password']);
    Route::post('/parent/change_password', [UserController::class, 'update_change_password']);

    // parent/my_student/subject/
    Route::get('/parent/my_student/subject/{student_id}', [SubjectController::class, 'ParentStudentSubject']);

    // exam timetable
    Route::get('/parent/my_student/exam_timetable/{student_id}', [ExaminationsController::class, 'ParentMyExamTimetable']);

    // timetable
    Route::get('/parent/my_student/subject/class_timetable/{class_id}/{subject_id}', [ClassTimetableController::class, 'MyTimetableParent']);

    // parent/my_student
    Route::get('/parent/my_student', [ParentController::class, 'myStudentParent']);
    
});





