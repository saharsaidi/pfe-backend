<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Formation extends Model
{
    use HasFactory;

    protected $fillable = [

        'date_debut',
        'date_fin',
        'titre',
        'description',
        'image',
        'theme_id'



    ];

    public function theme(){
        return $this->belongsTo(Theme::class);
    }

    public function salaries(){
        return $this->belongsToMany(User::class ,'assistances' );
    }
}
