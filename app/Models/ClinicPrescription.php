<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClinicPrescription extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id', 
        'clinic_id', 
        'prescription', 
        'from_time', 
        'to_time', 
        'test',
        'name',
        'age',
        'gender', 
        'address', 
        'scheduled_at',
        'lat_long',
        'status',
        'delivery_id',
        'delivery_coordinates',
       
              
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function clinic()
    {
        return $this->belongsTo(Clinic::class);
    }

    public function deliveryAgent()
    {
        return $this->belongsTo(User::class, 'delivery_id');
    }
}
