<?= $this->extend('layout/template_view'); ?>

<?= $this->section('content'); ?>
<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- /.row -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Status Pengajuan</h3>

                        <div class="card-tools">
                            <form action="" method="post">
                                <div class="input-group input-group-sm" style="width: 150px;">
                                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-default">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-hover text-nowrap">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Organisasi</th>
                                    <th>Tanggal</th>
                                    <th>Judul</th>
                                    <th>Status</th>
                                    <th>Keterangan</th>
                                    <th>Operation</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $i = 1 ?>
                                <?php foreach ($pengajuan as $aju) : ?>
                                    <tr>
                                        <td><?= $i ?></td>
                                        <td><?= $aju['pengaju']; ?></td>
                                        <td><?= $aju['created_at']; ?></td>
                                        <td><?= $aju['judul_pengajuan']; ?></td>
                                        <td><?= $aju['status_pengajuan']; ?></td>
                                        <td><?= $aju['keterangan_pengajuan']; ?></td>
                                        <td>
                                            <a href="/Home/edit/<?= $aju['slug_pengajuan'] ?>" class="btn btn-info"><i class="fas fa-pencil-alt"></i></a>
                                            <!-- <button type="button" class="btn btn-info"></button> -->
                                            <a href="/Home/delete/<?= $aju['id_pengajuan'] ?>" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                                        </td>
                                    </tr>
                                <?php $i++;
                                endforeach; ?>
                            </tbody>
                        </table>
                        <?= $pager->links('pengajuan', 'new_full'); ?>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div><!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?= $this->endSection(); ?>