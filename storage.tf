resource "yandex_storage_bucket" "bucket" {
  bucket     = var.bucket_name
  acl        = "public-read"    # deprecated warning: ok, не критично
  force_destroy = true
}

resource "yandex_storage_object" "image" {
  bucket     = yandex_storage_bucket.bucket.bucket
  key        = "logo.png"
  source     = "files/logo.png"
  acl        = "public-read"
}

output "image_url" {
  value = "https://storage.yandexcloud.net/${yandex_storage_bucket.bucket.bucke>
}
