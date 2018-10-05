module "eks" {
  source = "github.com/terraform-aws-modules/terraform-aws-eks?ref=v1.6.0"

  cluster_name = "${var.env}-${var.name}"

  vpc_id          = "${var.vpc_id}"
  subnets         = ["${var.subnets}"]

  worker_groups = [
    {
      name                          = "${var.name}"
      asg_desired_capacity          = "${var.asg_desired_capacity}"
      asg_min_size                  = "${var.asg_min_size}"
      asg_max_size                  = "${var.asg_max_size}"
      instance_type                 = "${var.instance_type}"
      root_volume_size              = "${var.root_volume_size}"
      key_name                      = "${var.key_name}"
      enable_monitoring             = "${var.enable_monitoring}"
      public_ip                     = "${var.public_ip}"
      autoscaling_enabled           = "${var.autoscaling_enabled}"
      additional_security_group_ids = "${var.additional_security_group_ids}"
      protect_from_scale_in         = "${var.protect_from_scale_in}"
    }
  ]

  tags = {
    Terraform = "true"
    env       = "${var.env}"
  }
}
