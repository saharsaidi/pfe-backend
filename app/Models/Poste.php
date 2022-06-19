<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Poste extends Model
{
    use HasFactory;

    protected $table = "postes";
    protected $fillable = [

        'title',
        'description',
        'published',



    ];

    public function occuper(){
        return $this->hasMany(Occupation::class);
    }
}
