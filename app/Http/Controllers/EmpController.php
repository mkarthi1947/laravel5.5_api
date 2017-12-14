<?php

namespace App\Http\Controllers;

use App\Emp;
use Illuminate\Http\Request;

class EmpController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        //echo 'emp.index';
        return Emp::all();


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        echo 'emp.create';
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        //
        //echo 'emp.store';
        $emp = new Emp();

        $emp->name = $request->name;

        $emp->position = 'test pos';

        $emp->department = 'test dept';

        $emp->salary = 'test sal';

      /*  $emp->position = $request->position;

        $emp->department = $request->department;

        $emp->salary = $request->salary;*/

        $emp->save();

        return $emp;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Emp  $emp
     * @return \Illuminate\Http\Response
     */
    public function show(Emp $emp)
    {
        return $emp;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Emp  $emp
     * @return \Illuminate\Http\Response
     */
    public function edit(Emp $emp)
    {
        //
        //echo 'emp.edit';
        return $emp;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Emp  $emp
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Emp $emp)
    {

        $emp->name = $request->name;

        $emp->save();

        return $emp;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Emp  $emp
     * @return \Illuminate\Http\Response
     */
    public function destroy(Emp $emp)
    {
        //
       // echo 'emp.destroy';
        $emp->delete();
        return $emp;
    }
}
