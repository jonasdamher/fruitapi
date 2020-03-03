<?php

namespace App\Http\Controllers;

use App\Fruit;
use Illuminate\Http\Request;

class FruitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Fruit::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (!is_array($request->all() ) ) {
            
            return response()->json(['error' => 'request must be an array'], 400);
        }

        $rules = [
            'name' => 'required'
        ];
        
        try {

            $validator = validator()->make($request->all(), $rules);
            
            if($validator->fails() ) {
                return response()->json([
                    'created' => false,
                    'errors'  => $validator->errors()->all()
                ], 414);
            }
    
            Fruit::create($request->all() );
            return response()->json(['created' => true], 201);

        }catch (Exception $e) {
            \Log::info('Error creating user: '.$e);
            return response()->json(['created' => false], 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Fruit  $fruit
     * @return \Illuminate\Http\Response
     */
    public function show(Fruit $fruit)
    {
        return Fruit::findOrFail($fruit->id);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Fruit  $fruit
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Fruit $fruit)
    {
        $res = Fruit::findOrFail($fruit->id);

        $res->name = $request->name;

        $res->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Fruit  $fruit
     * @return \Illuminate\Http\Response
     */
    public function destroy(Fruit $fruit)
    {
        return Fruit::destroy($fruit->id);
    }
}
