<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
Use App\Models\Poste;
Use Log;

class PosteController extends Controller
{
    public function getAll(){
      $data = Poste::get();
      return response()->json($data, 200);
    }
    public function deleteAll(){

        Poste::query()->delete();

        return response()->json([
            'message' => "Successfully deleted",
            'success' => true
        ], 200);
      }

    public function create(Request $request){
      $data['title'] = $request['title'];
      $data['description'] = $request['description'];
      $data['published'] = $request['published'];


      Poste::create($data);
      return response()->json([
          'message' => "Successfully created",
          'success' => true
      ], 200);
    }

    public function delete($id){
      $res = Poste::find($id)->delete();
      return response()->json([
          'message' => "Successfully deleted",
          'success' => true
      ], 200);
    }

    public function get($id){
      $data = Poste::find($id);
      return response()->json($data, 200);
    }

    public function update(Request $request,$id){
      $data['title'] = $request['title'];
      $data['description'] = $request['description'];
      $data['published'] = $request['published'];

      Poste::find($id)->update($data);
      return response()->json([
          'message' => "Successfully updated",
          'success' => true
      ], 200);
    }

    public function findByTitle($title){
        $data = Poste::find($title);
        return response()->json($data, 200);
      }
}

