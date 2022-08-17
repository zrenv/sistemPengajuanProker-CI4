<?php

namespace App\Controllers;

use App\Models\PengajuanModel;

class Dosen extends BaseController
{
    protected $PengajuanModel;
    public function __construct()
    {
        $this->PengajuanModel = new PengajuanModel();
    }
    public function confirm()
    {
        echo view('index_view');
    }
    public function pengajuan()
    {
        $pengajuan = $this->PengajuanModel->findAll();

        $curentpage = $this->request->getVar('page_pengajuan') ? $this->request->getVar('page_pengajuan') : 1;
        $keyword = $this->request->getVar('table_search');
        if ($keyword) {
            $data =  $this->PengajuanModel->search($keyword);
        } else {
            $data = $this->PengajuanModel->orderBy('created_at', 'DESC');
        }
        $data = [

            'pengajuan' => $data->paginate(5, 'pengajuan'),
            'pager' => $this->PengajuanModel->pager,
            'title' => 'Pengajuan | System Pengajuan Proker',
            'curentpage' => $curentpage

        ];
        if (in_groups('user')) {
            return redirect()->to('/status');
        } else {

            return  view('pengajuan_view', $data);
        }
    }
    public function acc($id)
    {
        // $acc = $this->PengajuanModel->find($id);
        // $data = $acc['status_pengajuan'];

        $this->PengajuanModel->save([
            'id_pengajuan' => $id,
            'status_pengajuan' => 'accept'
        ]);
        return redirect()->to('/pengajuan');
    }
    public function decline($id)
    {
        // $acc = $this->PengajuanModel->find($id);
        // $data = $acc['status_pengajuan'];
        // $data = $this->request->getVar('alasan');
        // dd($id);
        $this->PengajuanModel->save([
            'id_pengajuan' => $id,
            'status_pengajuan' => 'decline'
        ]);
        return redirect()->to('/pengajuan');
    }
}
