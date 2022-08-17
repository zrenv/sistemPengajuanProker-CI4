<?php

namespace App\Controllers;

use App\Models\PengajuanModel;

class Home extends BaseController
{
    protected $PengajuanModel;
    public function __construct()
    {
        $this->PengajuanModel = new PengajuanModel();
    }
    public function status()
    {

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
            'title' => 'Status | System Pengajuan Proker',
            'curentpage' => $curentpage

        ];
        if (in_groups('dosen')) {
            return redirect()->to('/pengajuan');
        } else {

            return view('status_view', $data);
        }
        // $pengajuan = $this->PengajuanModel->findAll();
    }
    public function upload()
    {
        // session();
        $data = [
            'title' => 'Upload | System Pengajuan Proker',
            'validation' => \config\services::validation()
        ];

        return view('upload_view', $data);
    }
    public function save()
    {
        if (!$this->validate(
            [
                'namaorganisasi' => 'required',
                'judul' => 'required',
                'keterangan' => 'required',
                'document' => [
                    'rules' => 'uploaded[document]|mime_in[document,application/pdf]',
                    'errors' => [
                        'uploaded' => 'Masukan document terlebih dahulu',
                        'mime_in' => 'silahkan masukan file pdf'
                    ]

                ]
            ]
        )) {
            // $validation =  \config\Services::validation();
            // return redirect()->to('/upload')->withInput()->with('vaidation', $validation);
            return redirect()->to('/upload')->withInput();
        }
        //ambil file

        $filedoc = $this->request->getFile('document');
        //pindah file
        $filedoc->move('file');
        //mengmabil nama file
        $filename = $filedoc->getName();

        // dd($this->request->getVar());
        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->PengajuanModel->save([
            'pengaju' => $this->request->getVar('namaorganisasi'),
            'judul_pengajuan' => $this->request->getVar('judul'),
            'slug_pengajuan' => $slug,
            'keterangan_pengajuan' => $this->request->getVar('keterangan'),
            'file_pengajuan' => $filename
        ]);
        return redirect()->to('/upload');
    }
    public function login()
    {
        $data = [
            'title' => 'LOGIN | System Pengajuan Proker'
        ];
        return view('auth/login_view', $data);
    }
    public function delete($id)
    {
        //cari nama file
        $data  = $this->PengajuanModel->find($id);

        //delete file
        unlink('file/' . $data['file_pengajuan']);

        $this->PengajuanModel->delete($id);
        return redirect()->to('/status');
    }
    public function edit($slug)
    {
        // $pengajuan = $this->PengajuanModel->findAll();
        $data = [
            'pengajuan' => $this->PengajuanModel->getpengajuan($slug),
            'validation' => \config\services::validation(),
            'title' => 'Edit | System Pengajuan Proker'
        ];
        return view('edit_view', $data);
    }
    public function update($id)
    {
        if (!$this->validate(
            [

                'namaorganisasi' => 'required',
                'judul' => 'required',
                'keterangan' => 'required',

            ]
        )) {
            // $validation =  \config\Services::validation();
            // return redirect()->to('/Home/edit/' . $this->request->getVar('slug'))->withInput()->with('vaidation', $validation);
            return redirect()->to('/Home/edit/' . $this->request->getVar('slug'))->withInput();
        }
        $validasiisi = $this->request->getFile('document');

        if ($validasiisi != null) {
            $validasiisi->move('file');
            $filename = $validasiisi->getName();
        } else {

            $filename = $this->PengajuanModel->getfileid($id)['file_pengajuan'];
        }

        // $filedoc = $this->request->getFile('document');
        // //pindah file
        // $filedoc->move('file');
        // //mengmabil nama file
        // $filename = $filedoc->getName();


        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->PengajuanModel->save([
            'id_pengajuan' => $id,
            'pengaju' => $this->request->getVar('namaorganisasi'),
            'judul_pengajuan' => $this->request->getVar('judul'),
            'slug_pengajuan' => $slug,
            'keterangan_pengajuan' => $this->request->getVar('keterangan'),
            'file_pengajuan' => $filename

        ]);
        return redirect()->to('/status');
    }
    public function download($id)
    {
        $file = new PengajuanModel();
        $data  = $file->find($id);
        // dd($data['file_pengajuan']);
        return $this->response->download('file/' . $data['file_pengajuan'], null);
    }
}
