<?= $this->extend('layout/template_view'); ?>

<?= $this->section('content'); ?>
<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- general form elements -->
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Edit Dokumen</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form action="/Home/update/<?= $pengajuan['id_pengajuan'] ?>" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <input type="hidden" name="slug" value="<?= $pengajuan['slug_pengajuan'] ?>">
                <div class="card-body">
                    <div class="form-group">
                        <label for="namaorganisasi">Nama Organisasi</label>
                        <input type="text" class="form-control  <?= ($validation->hasError('namaorganisasi')) ? 'is-invalid' : ''; ?>" id="namaorganisasi" name="namaorganisasi" value="<?= (old('namaorganisasi')) ? old('namaorganisasi') : $pengajuan['pengaju'] ?>" autofocus autocomplete="off">
                        <div class="invalid-feedback">
                            <?= $validation->getError('namaorganisasi') ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="judul">Judul</label>
                        <input type="text" class="form-control  <?= ($validation->hasError('judul')) ? 'is-invalid' : ''; ?>" id="judul" name="judul" value="<?= (old('judul')) ? old('judul') : $pengajuan['judul_pengajuan'] ?>">
                        <div class="invalid-feedback" autocomplete="off">
                            <?= $validation->getError('judul') ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="keterangan">Keterangan</label>
                        <input type="text" class="form-control  <?= ($validation->hasError('keterangan')) ? 'is-invalid' : ''; ?>" id="keterangan" name="keterangan" value="<?= (old('keterangan')) ? old('keterangan') : $pengajuan['keterangan_pengajuan'] ?>" autocomplete="off">
                        <div class="invalid-feedback">
                            <?= $validation->getError('keterangan') ?>
                        </div>
                    </div>
                    <!-- updatefile but now work -->
                    <!-- <div class="form-group">
                        <label for="exampleInputFile">Masukan file proker</label>
                        <div class="input-group">

                            <input type="file" value="<?= $pengajuan['file_pengajuan'] ?>" class="custom-file-input" id="document" name="document" onchange="get_name()">

                            <label class="custom-file-label" for="document"><?= (old('document')) ? old('document') : $pengajuan['file_pengajuan'] ?> </label>
                            <div class="invalid-feedback">
                            </div>
                        </div>
                    </div> -->
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>

        <!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?= $this->endSection(); ?>