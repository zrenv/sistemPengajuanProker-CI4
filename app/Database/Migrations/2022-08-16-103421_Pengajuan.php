<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Pengajuan extends Migration
{
    public function up()
    {
        //pengajuan
        $this->forge->addField([
            'id_pengajuan'          => ['type' => 'int', 'constraint' => 11, 'auto_increment' => true],
            'pengaju'               => ['type' => 'varchar', 'constraint' => 100],
            'judul_pengajuan'       => ['type' => 'varchar', 'constraint' => 100],
            'slug_pengajuan'        => ['type' => 'varchar', 'constraint' => 100],
            'created_at'            => ['type' => 'datetime', 'null' => true],
            'updated_at'            => ['type' => 'datetime', 'null' => true],
            'status_pengajuan'      => ['type' => 'varchar', 'constraint' => 100, 'default' => 'Pending'],
            'keterangan_pengajuan'  => ['type' => 'varchar', 'constraint' => 100],
            'alasan_pengajuan'      => ['type' => 'varchar', 'constraint' => 255, 'default' => '-'],
            'file_pengajuan'        => ['type' => 'varchar', 'constraint' => 255],
        ]);
        $this->forge->addKey('id_pengajuan', true);
        $this->forge->createTable('pengajuan', true);
    }

    public function down()
    {
        //
    }
}
