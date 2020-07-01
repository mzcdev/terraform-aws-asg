# locals

locals {
  asg_count = var.launch_each_subnet ? length(var.subnet_ids) : 1
}

locals {
  tags = concat(
    [
      {
        key                 = "Name"
        value               = var.name
        propagate_at_launch = true
      },
    ],
    var.tags,
  )
}
