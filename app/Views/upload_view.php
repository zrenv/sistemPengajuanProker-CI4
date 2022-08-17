<?= $this->extend('layout/template_view'); ?>

<?= $this->section('content'); ?>
<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- general form elements -->
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Upload Dokumen</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form action="/Home/save" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <div class="card-body">
                    <div class="form-group">
                        <label for="namaorganisasi">Nama Organisasi</label>
                        <input type="text" class="form-control <?= ($validation->hasError('namaorganisasi')) ? 'is-invalid' : ''; ?> " id="namaorganisasi" name="namaorganisasi" placeholder="Masukan nama organisasi" autofocus value="<?= old('namaorganisasi') ?>" autocapitalize="on" autocomplete="off">
                        <div class="invalid-feedback">
                            <?= $validation->getError('namaorganisasi') ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="judul">Judul</label>
                        <input type="text" class="form-control <?= ($validation->hasError('judul')) ? 'is-invalid' : ''; ?>" id="judul" name="judul" placeholder="Masukan Judul Proker" value="<?= old('judul') ?>" autocomplete="off">
                        <div class="invalid-feedback">
                            <?= $validation->getError('judul') ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="keterangan">Keterangan</label>
                        <input type="text" class="form-control <?= ($validation->hasError('keterangan')) ? 'is-invalid' : ''; ?>" id="keterangan" name="keterangan" placeholder="Masukan Keterangan Singkat" value="<?= old('keterangan') ?>" autocomplete="off">
                        <div class="invalid-feedback">
                            <?= $validation->getError('keterangan') ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">Masukan file proker</label>
                        <div class="input-group">

                            <input type="file" class="custom-file-input <?= ($validation->hasError('document')) ? 'is-invalid' : ''; ?>" id="document" name="document" onchange="get_name()">
                            <div class="invalid-feedback">
                                <?= $validation->getError('document') ?>
                            </div>
                            <label class="custom-file-label" for="document">pilih dokumen</label>
                        </div>
                    </div>
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