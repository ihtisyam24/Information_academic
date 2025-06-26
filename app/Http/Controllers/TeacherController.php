<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Hash;
use Auth;
use Str;

class TeacherController extends Controller
{
    public function list() 
    {
        $data['getRecord'] = User::getTeacher();
        $data['header_title'] = "Teacher List";
        return view('admin.teacher.list', $data);
    }

    public function add() 
    {
        $data['header_title'] = "Add New Teacher";
        return view('admin.teacher.add', $data);
    }

    public function insert(Request $request)
    {
        request()->validate([
            'email' => 'required|email|unique:Users',
            'mobile_number' => 'max:15|min:11',
            'martial_status' => 'max:50'
        ]);

        $teacher = new User;
        $teacher->name = trim($request->name);
        $teacher->last_name = trim($request->last_name);
        $teacher->gender = trim($request->gender);

        if (!empty($request->date_of_birth)) 
        {
            $teacher->date_of_birth = trim($request->date_of_birth);
        }

        if (!empty($request->addmission_date)) 
        {
            $teacher->addmission_date = trim($request->addmission_date);
        }

        if (!empty($request->file('profile_pict'))) 
        {
            $ext = $request->file('profile_pict')->getClientOriginalExtension();
            $file = $request->file('profile_pict');
            $randomStr = date('Ymdhis').Str::random(20);
            $filename = strtolower($randomStr).'.'.$ext;
            $file->move('upload/profile', $filename);

            $teacher->profile_pict = $filename;
        }

        $teacher->martial_status = trim($request->martial_status);
        $teacher->address = trim($request->address);
        $teacher->mobile_number = trim($request->mobile_number);
        $teacher->permanent_address = trim($request->permanent_address);
        $teacher->qualification = trim($request->qualification);
        $teacher->work_experience = trim($request->work_experience);
        $teacher->status = trim($request->status);
        $teacher->email = trim($request->email);
        $teacher->password = Hash::make($request->password);
        $teacher->user_type = 2;
        $teacher->save();


        return redirect('admin/teacher/list')->with('success', "Teacher Succesfully Created");
    }

    public function edit($id) 
    {
        $data['getRecord'] = User::getSingle($id);
        if (!empty( $data['getRecord'])) 
        {
            $data['header_title'] = "Edit Teacher";
            return view('admin.teacher.edit', $data);
        }
        else 
        {
           abort(404);
        }
    }

    public function update($id, Request $request)
    {
        request()->validate([
            'email' => 'required|email|unique:users,email,'.$id,
            'mobile_number' => 'max:15|min:11',
            'martial_status' => 'max:50'
        ]);

        $teacher = User::getSingle($id);
        $teacher->name = trim($request->name);
        $teacher->last_name = trim($request->last_name);
        $teacher->gender = trim($request->gender);

        if (!empty($request->date_of_birth)) 
        {
            $teacher->date_of_birth = trim($request->date_of_birth);
        }

        if (!empty($request->addmission_date)) 
        {
            $teacher->addmission_date = trim($request->addmission_date);
        }

        if (!empty($request->file('profile_pict'))) 
        {
            $ext = $request->file('profile_pict')->getClientOriginalExtension();
            $file = $request->file('profile_pict');
            $randomStr = date('Ymdhis').Str::random(20);
            $filename = strtolower($randomStr).'.'.$ext;
            $file->move('upload/profile', $filename);

            $teacher->profile_pict = $filename;
        }

        $teacher->martial_status = trim($request->martial_status);
        $teacher->address = trim($request->address);
        $teacher->mobile_number = trim($request->mobile_number);
        $teacher->permanent_address = trim($request->permanent_address);
        $teacher->qualification = trim($request->qualification);
        $teacher->work_experience = trim($request->work_experience);
        $teacher->status = trim($request->status);
        $teacher->email = trim($request->email);

       if (!empty($request->password)) 
        {
            $teacher->password = Hash::make($request->password);
        }

        $teacher->save();


        return redirect('admin/teacher/list')->with('success', "Teacher Succesfully Updated");
    }

    public function delete($id)
    {
        $getRecord = User::getSingle($id);
        if (!empty( $getRecord )) 
        {
            $getRecord->is_delete = 1;
            $getRecord->save();

            return redirect()->back()->with('success', "Teacher Succesfully Deleted");
        }
        else 
        {
           abort(404);
        }
    }
}
