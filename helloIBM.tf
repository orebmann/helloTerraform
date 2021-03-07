data "ibm_resource_instance" "es_instance_2" {
  name              = "Event Streams- Splunk Test"
  resource_group_id = "default"
}

resource "ibm_event_streams_topic" "es_topic_2" {
  resource_instance_id = data.ibm_resource_instance.es_instance_2.id
  name                 = "my-es-topic"
  partitions           = 1
  config = {
    "cleanup.policy"  = "compact,delete"
    "retention.ms"    = "86400000"
    "retention.bytes" = "1073741824"
    "segment.bytes"   = "536870912"
  }
}
