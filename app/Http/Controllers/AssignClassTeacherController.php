<?php

namespace App\Http\Controllers;
use App\Models\ClassModel;
use App\Models\User;
use App\Models\AssignClassTeacherModel;
use Auth;

use Illuminate\Http\Request;

class AssignClassTeacherController extends Controller
{
    public function list(Request $request)
    {
        $data['getRecord'] = AssignClassTeacherModel::getRecord();

        $data['header_title'] = "Assign Class Teacher";
        return view('admin.assign_class_teacher.list', $data);
    }

    public function add(Request $request)
    {
        $data['getClass'] = ClassModel::getClass();
        $data['getTeacher'] = User::getTeacherClass();

        $data['header_title'] = "Add Assign Class Teacher";
        return view('admin.assign_class_teacher.add', $data);
    }

    public function insert(Request $request)
    {
        if (!empty($request->teacher_id)) 
       {
            foreach ($request->teacher_id as $teacher_id) 
            {
                $getAlreadyFirst = AssignClassTeacherModel::getAlreadyFirst($request->class_id, $teacher_id);
                if (!empty( $getAlreadyFirst)) 
                {
                    $getAlreadyFirst->status = $request->status;
                    $getAlreadyFirst->save();

                }
                else 
                {
                    $save = new AssignClassTeacherModel;
                    $save->class_id = $request->class_id;
                    $save->teacher_id = $teacher_id;
                    $save->status = $request->status;
                    $save->created_by = Auth::user()->id;
                    $save->save(); 
                }
               
            }
            return redirect('admin/assign_class_teacher/list')->with('success', "Assign Class to Teacher Succesfully");
       }
       else
       {
            return redirect()->back()->with('error', 'Due to some error pls try again!');
       }
    }

    public function edit($id)
    {
        $getRecord = AssignClassTeacherModel::getSingle($id);
        if (!empty($getRecord)) 
        {
            $data['getRecord'] = $getRecord;
            $data['getAssignTeacherID'] = AssignClassTeacherModel::getAssignTeacherID($getRecord->class_id);
            $data['getClass'] = ClassModel::getClass();
            $data['getTeacher'] = User::getTeacherClass();
            $data['header_title'] = "Edit Assign Class Teacher";
            return view('admin.assign_class_teacher.edit', $data);
        }
        else 
        {
           abort(404);
        }
    }

    public function update($id,Request $request)
    {
        AssignClassTeacherModel::deleteTeacher($request->class_id);

        if (!empty($request->teacher_id)) 
       {
            foreach ($request->teacher_id as $teacher_id) 
            {
                $getAlreadyFirst = AssignClassTeacherModel::getAlreadyFirst($request->class_id, $teacher_id);
                if (!empty( $getAlreadyFirst)) 
                {
                    $getAlreadyFirst->status = $request->status;
                    $getAlreadyFirst->save();

                }
                else 
                {
                    $save = new AssignClassTeacherModel;
                    $save->class_id = $request->class_id;
                    $save->teacher_id = $teacher_id;
                    $save->status = $request->status;
                    $save->created_by = Auth::user()->id;
                    $save->save(); 
                }
               
            }
            
       }

       return redirect('admin/assign_class_teacher/list')->with('success', "Assign Class to Teacher Succesfully");
       
    }

    public function edit_single($id)
    {
        $getRecord = AssignClassTeacherModel::getSingle($id);
        if (!empty($getRecord)) 
        {
            $data['getRecord'] = $getRecord;            
            $data['getClass'] = ClassModel::getClass();
            $data['getTeacher'] = User::getTeacherClass();
            $data['header_title'] = "Edit Assign Class Teacher";
            return view('admin.assign_class_teacher.edit_single', $data);
        }
        else 
        {
           abort(404);
        }
    }

    public function update_single($id, Request $request)
    {
        $getAlreadyFirst = AssignClassTeacherModel::getAlreadyFirst($request->class_id, $request->teacher_id);
         if (!empty( $getAlreadyFirst)) 
            {
                 $getAlreadyFirst->status = $request->status;
                 $getAlreadyFirst->save();

                return redirect('admin/assign_class_teacher/list')->with('success', "Status Succesfully updated");

            }
            else 
            {
                $save = AssignClassTeacherModel::getSingle($id);
                $save->class_id = $request->class_id;
                $save->teacher_id = $request->teacher_id;
                $save->status = $request->status;
                $save->save(); 

                return redirect('admin/assign_class_teacher/list')->with('success', "Assign Class to Teacher Succesfully updated");
               
            }
   
    }

    public function delete($id)
    {
        $save = AssignClassTeacherModel::getSingle($id);
        $save->delete();


        return redirect()->back()->with('success', 'Assign Class to Teacher Successfully Deleted');
    }

    // teacher side work
    public function MyClassSubject()
    {
        $data['getRecord'] = AssignClassTeacherModel::getMyClassSubject(Auth::user()->id);
        $data['header_title'] = 'My Class Subject';
        return view('teacher.my_class_subject', $data);
    }
}
