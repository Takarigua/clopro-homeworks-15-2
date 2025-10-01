output "bucket_image_url" {
  value = "https://storage.yandexcloud.net/${yandex_storage_bucket.bucket.bucke>
}

output "instance_group_id" {
  value = yandex_compute_instance_group.lamp-group.id
}
