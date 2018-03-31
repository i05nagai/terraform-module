data "null_data_source" "map_list" {
  count = "${length(var.map_list)}"
  # refer as "${data.null_data_source.values.outputs["key"]}"
  inputs = "${merge(var.base_map, var.map_list[count.index])}"
}
