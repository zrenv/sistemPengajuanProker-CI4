<?php

namespace App\Models;

use CodeIgniter\Model;

class PengajuanModel extends Model
{
    protected $table      = 'pengajuan';
    protected $primaryKey = 'id_pengajuan';
    protected $allowedFields = ['pengaju', 'judul_pengajuan', 'keterangan_pengajuan', 'updated_at', 'created_at', 'slug_pengajuan', 'file_pengajuan', 'status_pengajuan'];



    protected $useTimestamps = true;

    public function getpengajuan($slug_pengajuan = false)
    {
        if ($slug_pengajuan == false) {
            return $this->findAll();
        }
        return $this->where(['slug_pengajuan' => $slug_pengajuan])->first();
    }

    public function search($keyword)
    {
        return $this->table('pengajuan')->like('pengaju', $keyword)->orlike('status_pengajuan', $keyword);
    }
    public function getfileid($id)
    {
        if ($id == false) {
            return $this->findAll();
        }
        return $this->where(['id_pengajuan' => $id])->first();
    }
}
