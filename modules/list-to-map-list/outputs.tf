output "map_list" {
  value = "${data.null_data_source.map_list.*.outputs}"
}
