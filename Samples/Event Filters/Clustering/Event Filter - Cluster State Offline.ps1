# EXAMPLE for PowerEvents PowerShell module available on http://powerevents.codeplex.com
#
#  Author: Trevor Sullivan
#    Date: 12/1/10
#   Brief: This example shows how to use PowerEvents to create a WMI event filter that detects when a Microsoft cluster resource goes offline.
#    Note: This is not a complete working sample of the PowerEvents module. This only shows how to create an event filter.
#          A fully functioning sample requires an event consumer, to respond to the events, as well as a binding between the filter and consumer.

New-WmiEventFilter -Name ClusterStateOffline -Query "select * from __InstanceModificationEvent within 5 where TargetInstance ISA 'MSCluster_Resource' and TargetInstance.State <> PreviousInstance.State and TargetInstance.State = 3"