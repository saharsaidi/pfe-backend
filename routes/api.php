<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\SalarieController;
use App\Http\Controllers\API\PosteController;
use App\Http\Controllers\FormationController;
use App\Http\Controllers\AssisterController;
use App\Http\Controllers\OccuperController;
use App\Http\Controllers\ThemeController;
use App\Http\Controllers\AuthController;





Route::prefix('salarie')->group(function () {
    Route::get('/',[ SalarieController::class, 'getAll']);
    Route::post('/',[ SalarieController::class, 'create']);
    Route::delete('/{id}',[ SalarieController::class, 'delete']);
    Route::get('/{id}',[ SalarieController::class, 'get']);
    Route::put('/{id}',[ SalarieController::class, 'update']);
});
Route::prefix('poste')->group(function () {
    Route::get('/',[ PosteController::class, 'getAll']);
    Route::post('/',[ PosteController::class, 'create']);
    Route::delete('/{id}',[ PosteController::class, 'delete']);
    Route::delete('/',[ PosteController::class, 'deleteAll']);
    Route::get('/{id}',[ PosteController::class, 'get']);
    Route::put('/{id}',[ PosteController::class, 'update']);
    Route::get('/find',[ PosteController::class, 'findByTitle']);

});

Route::prefix('assister')->group(function () {
    Route::get('/',[ AssisterController::class, 'getAll']);
    Route::post('/',[ AssisterController::class, 'create']);
    Route::delete('/{id}',[ AssisterController::class, 'delete']);
    Route::delete('/',[ AssisterController::class, 'deleteAll']);
    Route::get('/{id}',[ AssisterController::class, 'get']);
    Route::put('/{id}',[ AssisterController::class, 'update']);
});
    Route::prefix('formation')->group(function () {
        Route::get('/',[ FormationController::class, 'getAll']);
        Route::post('/',[ FormationController::class, 'create']);
        Route::delete('/{id}',[ FormationController::class, 'delete']);
        Route::delete('/',[ FormationController::class, 'deleteAll']);
        Route::get('/{id}',[ FormationController::class, 'get']);
        Route::put('/{id}',[ FormationController::class, 'update']);
        Route::put('/upload',[ FormationController::class, 'upload']);




});

Route::prefix('theme')->group(function () {
    Route::get('/',[ ThemeController::class, 'getAll']);
    Route::post('/',[ ThemeController::class, 'create']);
    Route::delete('/{id}',[ ThemeController::class, 'delete']);
    Route::delete('/',[ ThemeController::class, 'deleteAll']);
    Route::get('/{id}',[ ThemeController::class, 'get']);
    Route::put('/{id}',[ ThemeController::class, 'update']);



});

Route::prefix('occuper')->group(function () {
    Route::get('/',[ OccuperController::class, 'getAll']);
    Route::post('/',[ OccuperController::class, 'create']);
    Route::delete('/{id}',[ OccuperController::class, 'delete']);
    Route::delete('/',[ OccuperController::class, 'deleteAll']);
    Route::get('/{id}',[ OccuperController::class, 'get']);
    Route::put('/{id}',[ OccuperController::class, 'update']);


});

Route::group([
    'middleware' => 'api',
    'namespace' => 'App\Http\Controllers',
    'prefix' => 'auth'

], function ($router) {
    Route::post('login', 'AuthController@login');
    Route::post('register', 'AuthController@register');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::get('user-profile', 'AuthController@userProfile');
    Route::put('/upload',[ AuthController::class, 'upload']);
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
