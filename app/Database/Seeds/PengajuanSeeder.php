<?php


namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

class PengajuanSeeder extends Seeder
{

    public function run()
    {
        function random_number($maxlength = 1)
        {
            $chary = array(
                "HIMATIFTA", "HIMA SIPIL", "HIMA GEO"
            );

            $return_str = $chary[rand(0, 2)];

            return $return_str;
        }
        for ($i = 1; $i <= 100; $i++) {
            $faker = \Faker\Factory::create('id_ID');
            $title = $faker->text(20);
            // $faker->file($sourceDir , $targetDir );
            $data = [
                'pengaju' => random_number(1),
                'judul_pengajuan' => $title,
                'slug_pengajuan' => url_title($title, '-', true),
                'created_at' => Time::createFromTimestamp($faker->unixTime($max = 'now')),
                'updated_at' => Time::now(),
                'status_pengajuan' => 'Pending',
                'keterangan_pengajuan' => $faker->text(30),
                'file_pengajuan' => $faker->file($sourceDir = 'dummyfile', $targetDir = 'file', false),

            ];

            // Simple Queries
            // $this->db->query('INSERT INTO users (username, email) VALUES(:username:, :email:)', $data);

            // Using Query Builder

            $this->db->table('pengajuan')->insert($data);
        }
    }
}
