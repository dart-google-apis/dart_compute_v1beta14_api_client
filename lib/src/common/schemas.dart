part of compute_v1beta14_api_client;

/** An access configuration attached to an instance's network interface. */
class AccessConfig {

  /** Type of the resource. */
  String kind;

  /** Name of this access configuration. */
  String name;

  /** An external IP address associated with this instance. Specify an unused static IP address available to the project. If not specified, the external IP will be drawn from a shared ephemeral pool. */
  String natIP;

  /** Type of configuration. Must be set to "ONE_TO_ONE_NAT". This configures port-for-port NAT to the internet. */
  String type;

  /** Create new AccessConfig from JSON data */
  AccessConfig.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("natIP")) {
      natIP = json["natIP"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AccessConfig */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (natIP != null) {
      output["natIP"] = natIP;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AccessConfig */
  String toString() => JSON.stringify(this.toJson());

}

/** An instance-attached disk resource. */
class AttachedDisk {

  /** Indicates that this is a boot disk. VM will use the first partition of the disk for its root filesystem. */
  bool boot;

  /** Persistent disk only; must be unique within the instance when specified. This represents a unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. If not specified, a default will be chosen by the system. */
  String deviceName;

  /** A zero-based index to assign to this disk, where 0 is reserved for the boot disk. If not specified, the server will choose an appropriate value. */
  int index;

  /** Type of the resource. */
  String kind;

  /** The mode in which to attach this disk, either "READ_WRITE" or "READ_ONLY". */
  String mode;

  /** Persistent disk only; the URL of the persistent disk resource. */
  String source;

  /** Type of the disk, either "EPHEMERAL" or "PERSISTENT". Note that persistent disks must be created before you can specify them here. */
  String type;

  /** Create new AttachedDisk from JSON data */
  AttachedDisk.fromJson(Map json) {
    if (json.containsKey("boot")) {
      boot = json["boot"];
    }
    if (json.containsKey("deviceName")) {
      deviceName = json["deviceName"];
    }
    if (json.containsKey("index")) {
      index = json["index"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("mode")) {
      mode = json["mode"];
    }
    if (json.containsKey("source")) {
      source = json["source"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AttachedDisk */
  Map toJson() {
    var output = new Map();

    if (boot != null) {
      output["boot"] = boot;
    }
    if (deviceName != null) {
      output["deviceName"] = deviceName;
    }
    if (index != null) {
      output["index"] = index;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (mode != null) {
      output["mode"] = mode;
    }
    if (source != null) {
      output["source"] = source;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AttachedDisk */
  String toString() => JSON.stringify(this.toJson());

}

/** Deprecation status for a public resource. */
class DeprecationStatus {

  /** An optional RFC3339 timestamp on or after which the deprecation state of this resource will be changed to DELETED. */
  String deleted;

  /** An optional RFC3339 timestamp on or after which the deprecation state of this resource will be changed to DEPRECATED. */
  String deprecated;

  /** An optional RFC3339 timestamp on or after which the deprecation state of this resource will be changed to OBSOLETE. */
  String obsolete;

  /** A URL of the suggested replacement for the deprecated resource. The deprecated resource and its replacement must be resources of the same kind. */
  String replacement;

  /** The deprecation state. Can be "DEPRECATED", "OBSOLETE", or "DELETED". Operations which create a new resource using a "DEPRECATED" resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. New uses of "OBSOLETE" or "DELETED" resources will result in an error. */
  String state;

  /** Create new DeprecationStatus from JSON data */
  DeprecationStatus.fromJson(Map json) {
    if (json.containsKey("deleted")) {
      deleted = json["deleted"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = json["deprecated"];
    }
    if (json.containsKey("obsolete")) {
      obsolete = json["obsolete"];
    }
    if (json.containsKey("replacement")) {
      replacement = json["replacement"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
  }

  /** Create JSON Object for DeprecationStatus */
  Map toJson() {
    var output = new Map();

    if (deleted != null) {
      output["deleted"] = deleted;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated;
    }
    if (obsolete != null) {
      output["obsolete"] = obsolete;
    }
    if (replacement != null) {
      output["replacement"] = replacement;
    }
    if (state != null) {
      output["state"] = state;
    }

    return output;
  }

  /** Return String representation of DeprecationStatus */
  String toString() => JSON.stringify(this.toJson());

}

/** A persistent disk resource. */
class Disk {

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** Type of the resource. */
  String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  String name;

  /** Internal use only. */
  String options;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** Size of the persistent disk, specified in GB. This parameter is optional when creating a disk from a disk image or a snapshot, otherwise it is required. */
  String sizeGb;

  /** The source snapshot used to create this disk. Once the source snapshot has been deleted from the system, this field will be cleared, and will not be set even if a snapshot with the same name has been re-created. */
  String sourceSnapshot;

  /** The 'id' value of the snapshot used to create this disk. This value may be used to determine whether the disk was created from the current or a previous instance of a given disk snapshot. */
  String sourceSnapshotId;

  /** The status of disk creation (output only). */
  String status;

  /** URL of the zone where the disk resides (output only). */
  String zone;

  /** Create new Disk from JSON data */
  Disk.fromJson(Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("options")) {
      options = json["options"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("sizeGb")) {
      sizeGb = json["sizeGb"];
    }
    if (json.containsKey("sourceSnapshot")) {
      sourceSnapshot = json["sourceSnapshot"];
    }
    if (json.containsKey("sourceSnapshotId")) {
      sourceSnapshotId = json["sourceSnapshotId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("zone")) {
      zone = json["zone"];
    }
  }

  /** Create JSON Object for Disk */
  Map toJson() {
    var output = new Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (options != null) {
      output["options"] = options;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (sizeGb != null) {
      output["sizeGb"] = sizeGb;
    }
    if (sourceSnapshot != null) {
      output["sourceSnapshot"] = sourceSnapshot;
    }
    if (sourceSnapshotId != null) {
      output["sourceSnapshotId"] = sourceSnapshotId;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (zone != null) {
      output["zone"] = zone;
    }

    return output;
  }

  /** Return String representation of Disk */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains a list of persistent disk resources. */
class DiskList {

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** The persistent disk resources. */
  List<Disk> items;

  /** Type of resource. */
  String kind;

  /** A token used to continue a truncated list request (output only). */
  String nextPageToken;

  /** Server defined URL for this resource (output only). */
  String selfLink;

  /** Create new DiskList from JSON data */
  DiskList.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Disk.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for DiskList */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of DiskList */
  String toString() => JSON.stringify(this.toJson());

}

/** A firewall resource. */
class Firewall {

  /** The list of rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection. */
  List<FirewallAllowed> allowed;

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** Type of the resource. */
  String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  String name;

  /** URL of the network to which this firewall is applied; provided by the client when the firewall is created. */
  String network;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** A list of IP address blocks expressed in CIDR format which this rule applies to. One or both of sourceRanges and sourceTags may be set; an inbound connection is allowed if either the range or the tag of the source matches. */
  List<String> sourceRanges;

  /** A list of instance tags which this rule applies to. One or both of sourceRanges and sourceTags may be set; an inbound connection is allowed if either the range or the tag of the source matches. */
  List<String> sourceTags;

  /** A list of instance tags indicating sets of instances located on network which may make network connections as specified in allowed. If no targetTags are specified, the firewall rule applies to all instances on the specified network. */
  List<String> targetTags;

  /** Create new Firewall from JSON data */
  Firewall.fromJson(Map json) {
    if (json.containsKey("allowed")) {
      allowed = [];
      json["allowed"].forEach((item) {
        allowed.add(new FirewallAllowed.fromJson(item));
      });
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("network")) {
      network = json["network"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("sourceRanges")) {
      sourceRanges = [];
      json["sourceRanges"].forEach((item) {
        sourceRanges.add(item);
      });
    }
    if (json.containsKey("sourceTags")) {
      sourceTags = [];
      json["sourceTags"].forEach((item) {
        sourceTags.add(item);
      });
    }
    if (json.containsKey("targetTags")) {
      targetTags = [];
      json["targetTags"].forEach((item) {
        targetTags.add(item);
      });
    }
  }

  /** Create JSON Object for Firewall */
  Map toJson() {
    var output = new Map();

    if (allowed != null) {
      output["allowed"] = new List();
      allowed.forEach((item) {
        output["allowed"].add(item.toJson());
      });
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (network != null) {
      output["network"] = network;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (sourceRanges != null) {
      output["sourceRanges"] = new List();
      sourceRanges.forEach((item) {
        output["sourceRanges"].add(item);
      });
    }
    if (sourceTags != null) {
      output["sourceTags"] = new List();
      sourceTags.forEach((item) {
        output["sourceTags"].add(item);
      });
    }
    if (targetTags != null) {
      output["targetTags"] = new List();
      targetTags.forEach((item) {
        output["targetTags"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of Firewall */
  String toString() => JSON.stringify(this.toJson());

}

class FirewallAllowed {

  /** Required; this is the IP protocol that is allowed for this rule. This can either be a well known protocol string (tcp, udp or icmp) or the IP protocol number. */
  String IPProtocol;

  /** An optional list of ports which are allowed. It is an error to specify this for any protocol that isn't UDP or TCP. Each entry must be either an integer or a range. If not specified, connections through any port are allowed.
Example inputs include: ["22"], ["80","443"] and ["12345-12349"]. */
  List<String> ports;

  /** Create new FirewallAllowed from JSON data */
  FirewallAllowed.fromJson(Map json) {
    if (json.containsKey("IPProtocol")) {
      IPProtocol = json["IPProtocol"];
    }
    if (json.containsKey("ports")) {
      ports = [];
      json["ports"].forEach((item) {
        ports.add(item);
      });
    }
  }

  /** Create JSON Object for FirewallAllowed */
  Map toJson() {
    var output = new Map();

    if (IPProtocol != null) {
      output["IPProtocol"] = IPProtocol;
    }
    if (ports != null) {
      output["ports"] = new List();
      ports.forEach((item) {
        output["ports"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of FirewallAllowed */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains a list of firewall resources. */
class FirewallList {

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** The firewall resources. */
  List<Firewall> items;

  /** Type of resource. */
  String kind;

  /** A token used to continue a truncated list request (output only). */
  String nextPageToken;

  /** Server defined URL for this resource (output only). */
  String selfLink;

  /** Create new FirewallList from JSON data */
  FirewallList.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Firewall.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for FirewallList */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of FirewallList */
  String toString() => JSON.stringify(this.toJson());

}

/** A disk image resource. */
class Image {

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** The deprecation status associated with this image. */
  DeprecationStatus deprecated;

  /** Textual description of the resource; provided by the client when the resource is created. */
  String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** Type of the resource. */
  String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  String name;

  /** An optional URL of the preferred kernel for use with this disk image. If not specified, a server defined default kernel will be used. */
  String preferredKernel;

  /** The raw disk image parameters. */
  ImageRawDisk rawDisk;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** Must be "RAW"; provided by the client when the disk image is created. */
  String sourceType;

  /** Create new Image from JSON data */
  Image.fromJson(Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(json["deprecated"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("preferredKernel")) {
      preferredKernel = json["preferredKernel"];
    }
    if (json.containsKey("rawDisk")) {
      rawDisk = new ImageRawDisk.fromJson(json["rawDisk"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("sourceType")) {
      sourceType = json["sourceType"];
    }
  }

  /** Create JSON Object for Image */
  Map toJson() {
    var output = new Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (preferredKernel != null) {
      output["preferredKernel"] = preferredKernel;
    }
    if (rawDisk != null) {
      output["rawDisk"] = rawDisk.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (sourceType != null) {
      output["sourceType"] = sourceType;
    }

    return output;
  }

  /** Return String representation of Image */
  String toString() => JSON.stringify(this.toJson());

}

/** The raw disk image parameters. */
class ImageRawDisk {

  /** The format used to encode and transmit the block device. Should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created. */
  String containerType;

  /** An optional SHA1 checksum of the disk image before unpackaging; provided by the client when the disk image is created. */
  String sha1Checksum;

  /** The full Google Cloud Storage URL where the disk image is stored; provided by the client when the disk image is created. */
  String source;

  /** Create new ImageRawDisk from JSON data */
  ImageRawDisk.fromJson(Map json) {
    if (json.containsKey("containerType")) {
      containerType = json["containerType"];
    }
    if (json.containsKey("sha1Checksum")) {
      sha1Checksum = json["sha1Checksum"];
    }
    if (json.containsKey("source")) {
      source = json["source"];
    }
  }

  /** Create JSON Object for ImageRawDisk */
  Map toJson() {
    var output = new Map();

    if (containerType != null) {
      output["containerType"] = containerType;
    }
    if (sha1Checksum != null) {
      output["sha1Checksum"] = sha1Checksum;
    }
    if (source != null) {
      output["source"] = source;
    }

    return output;
  }

  /** Return String representation of ImageRawDisk */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains a list of disk image resources. */
class ImageList {

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** The disk image resources. */
  List<Image> items;

  /** Type of resource. */
  String kind;

  /** A token used to continue a truncated list request (output only). */
  String nextPageToken;

  /** Server defined URL for this resource (output only). */
  String selfLink;

  /** Create new ImageList from JSON data */
  ImageList.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Image.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for ImageList */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of ImageList */
  String toString() => JSON.stringify(this.toJson());

}

/** An instance resource. */
class Instance {

  /** Reserved for future use. */
  bool canIpForward;

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  String description;

  /** Array of disks associated with this instance. Persistent disks must be created before you can assign them. */
  List<AttachedDisk> disks;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** An optional URL of the disk image resource to be installed on this instance; provided by the client when the instance is created. Alternatively to passing the image, the client may choose to boot from a persistent disk, by setting boot=true flag on one of the entries in disks[] collection. */
  String image;

  /** URL of the kernel resource to use when booting. In case of booting from persistent disk, this parameter is required. When booting from a disk image, it is optional, but may be provided to use a different kernel than the one associated with the image. */
  String kernel;

  /** Type of the resource. */
  String kind;

  /** URL of the machine type resource describing which machine type to use to host the instance; provided by the client when the instance is created. */
  String machineType;

  /** Metadata key/value pairs assigned to this instance. Consists of custom metadata or predefined keys; see Instance documentation for more information. */
  Metadata metadata;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  String name;

  /** Array of configurations for this interface. This specifies how this interface is configured to interact with other network services, such as connecting to the internet. Currently, ONE_TO_ONE_NAT is the only access config supported. If there are no accessConfigs specified, then this instance will have no external internet access. */
  List<NetworkInterface> networkInterfaces;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** A list of service accounts each with specified scopes, for which access tokens are to be made available to the instance through metadata queries. */
  List<ServiceAccount> serviceAccounts;

  /** Instance status. One of the following values: "PROVISIONING", "STAGING", "RUNNING", "STOPPING", "STOPPED", "TERMINATED" (output only). */
  String status;

  /** An optional, human-readable explanation of the status (output only). */
  String statusMessage;

  /** A list of tags to be applied to this instance. Used to identify valid sources or targets for network firewalls. Provided by the client on instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. */
  Tags tags;

  /** URL of the zone where the instance resides (output only). */
  String zone;

  /** Create new Instance from JSON data */
  Instance.fromJson(Map json) {
    if (json.containsKey("canIpForward")) {
      canIpForward = json["canIpForward"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("disks")) {
      disks = [];
      json["disks"].forEach((item) {
        disks.add(new AttachedDisk.fromJson(item));
      });
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = json["image"];
    }
    if (json.containsKey("kernel")) {
      kernel = json["kernel"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("machineType")) {
      machineType = json["machineType"];
    }
    if (json.containsKey("metadata")) {
      metadata = new Metadata.fromJson(json["metadata"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("networkInterfaces")) {
      networkInterfaces = [];
      json["networkInterfaces"].forEach((item) {
        networkInterfaces.add(new NetworkInterface.fromJson(item));
      });
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("serviceAccounts")) {
      serviceAccounts = [];
      json["serviceAccounts"].forEach((item) {
        serviceAccounts.add(new ServiceAccount.fromJson(item));
      });
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("statusMessage")) {
      statusMessage = json["statusMessage"];
    }
    if (json.containsKey("tags")) {
      tags = new Tags.fromJson(json["tags"]);
    }
    if (json.containsKey("zone")) {
      zone = json["zone"];
    }
  }

  /** Create JSON Object for Instance */
  Map toJson() {
    var output = new Map();

    if (canIpForward != null) {
      output["canIpForward"] = canIpForward;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (disks != null) {
      output["disks"] = new List();
      disks.forEach((item) {
        output["disks"].add(item.toJson());
      });
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image;
    }
    if (kernel != null) {
      output["kernel"] = kernel;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (machineType != null) {
      output["machineType"] = machineType;
    }
    if (metadata != null) {
      output["metadata"] = metadata.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (networkInterfaces != null) {
      output["networkInterfaces"] = new List();
      networkInterfaces.forEach((item) {
        output["networkInterfaces"].add(item.toJson());
      });
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (serviceAccounts != null) {
      output["serviceAccounts"] = new List();
      serviceAccounts.forEach((item) {
        output["serviceAccounts"].add(item.toJson());
      });
    }
    if (status != null) {
      output["status"] = status;
    }
    if (statusMessage != null) {
      output["statusMessage"] = statusMessage;
    }
    if (tags != null) {
      output["tags"] = tags.toJson();
    }
    if (zone != null) {
      output["zone"] = zone;
    }

    return output;
  }

  /** Return String representation of Instance */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains a list of instance resources. */
class InstanceList {

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** A list of instance resources. */
  List<Instance> items;

  /** Type of resource. */
  String kind;

  /** A token used to continue a truncated list request (output only). */
  String nextPageToken;

  /** Server defined URL for this resource (output only). */
  String selfLink;

  /** Create new InstanceList from JSON data */
  InstanceList.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Instance.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for InstanceList */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of InstanceList */
  String toString() => JSON.stringify(this.toJson());

}

/** A kernel resource. */
class Kernel {

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** The deprecation status associated with this kernel. */
  DeprecationStatus deprecated;

  /** An optional textual description of the resource. */
  String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** Type of the resource. */
  String kind;

  /** Name of the resource. */
  String name;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** Create new Kernel from JSON data */
  Kernel.fromJson(Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(json["deprecated"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Kernel */
  Map toJson() {
    var output = new Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Kernel */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains a list of kernel resources. */
class KernelList {

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** The kernel resources. */
  List<Kernel> items;

  /** Type of resource. */
  String kind;

  /** A token used to continue a truncated list request (output only). */
  String nextPageToken;

  /** Server defined URL for this resource (output only). */
  String selfLink;

  /** Create new KernelList from JSON data */
  KernelList.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Kernel.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for KernelList */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of KernelList */
  String toString() => JSON.stringify(this.toJson());

}

/** A machine type resource. */
class MachineType {

  /** The zones that this machine type can run in. */
  List<String> availableZone;

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** The deprecation status associated with this machine type. */
  DeprecationStatus deprecated;

  /** An optional textual description of the resource. */
  String description;

  /** List of extended ephemeral disks assigned to the instance. */
  List<MachineTypeEphemeralDisks> ephemeralDisks;

  /** Count of CPUs exposed to the instance. */
  int guestCpus;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** Space allotted for the image, defined in GB. */
  int imageSpaceGb;

  /** Type of the resource. */
  String kind;

  /** Maximum persistent disks allowed. */
  int maximumPersistentDisks;

  /** Maximum total persistent disks size (GB) allowed. */
  String maximumPersistentDisksSizeGb;

  /** Physical memory assigned to the instance, defined in MB. */
  int memoryMb;

  /** Name of the resource. */
  String name;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** Create new MachineType from JSON data */
  MachineType.fromJson(Map json) {
    if (json.containsKey("availableZone")) {
      availableZone = [];
      json["availableZone"].forEach((item) {
        availableZone.add(item);
      });
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(json["deprecated"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("ephemeralDisks")) {
      ephemeralDisks = [];
      json["ephemeralDisks"].forEach((item) {
        ephemeralDisks.add(new MachineTypeEphemeralDisks.fromJson(item));
      });
    }
    if (json.containsKey("guestCpus")) {
      guestCpus = json["guestCpus"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("imageSpaceGb")) {
      imageSpaceGb = json["imageSpaceGb"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maximumPersistentDisks")) {
      maximumPersistentDisks = json["maximumPersistentDisks"];
    }
    if (json.containsKey("maximumPersistentDisksSizeGb")) {
      maximumPersistentDisksSizeGb = json["maximumPersistentDisksSizeGb"];
    }
    if (json.containsKey("memoryMb")) {
      memoryMb = json["memoryMb"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for MachineType */
  Map toJson() {
    var output = new Map();

    if (availableZone != null) {
      output["availableZone"] = new List();
      availableZone.forEach((item) {
        output["availableZone"].add(item);
      });
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (ephemeralDisks != null) {
      output["ephemeralDisks"] = new List();
      ephemeralDisks.forEach((item) {
        output["ephemeralDisks"].add(item.toJson());
      });
    }
    if (guestCpus != null) {
      output["guestCpus"] = guestCpus;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (imageSpaceGb != null) {
      output["imageSpaceGb"] = imageSpaceGb;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maximumPersistentDisks != null) {
      output["maximumPersistentDisks"] = maximumPersistentDisks;
    }
    if (maximumPersistentDisksSizeGb != null) {
      output["maximumPersistentDisksSizeGb"] = maximumPersistentDisksSizeGb;
    }
    if (memoryMb != null) {
      output["memoryMb"] = memoryMb;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of MachineType */
  String toString() => JSON.stringify(this.toJson());

}

class MachineTypeEphemeralDisks {

  /** Size of the ephemeral disk, defined in GB. */
  int diskGb;

  /** Create new MachineTypeEphemeralDisks from JSON data */
  MachineTypeEphemeralDisks.fromJson(Map json) {
    if (json.containsKey("diskGb")) {
      diskGb = json["diskGb"];
    }
  }

  /** Create JSON Object for MachineTypeEphemeralDisks */
  Map toJson() {
    var output = new Map();

    if (diskGb != null) {
      output["diskGb"] = diskGb;
    }

    return output;
  }

  /** Return String representation of MachineTypeEphemeralDisks */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains a list of machine type resources. */
class MachineTypeList {

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** The machine type resources. */
  List<MachineType> items;

  /** Type of resource. */
  String kind;

  /** A token used to continue a truncated list request (output only). */
  String nextPageToken;

  /** Server defined URL for this resource (output only). */
  String selfLink;

  /** Create new MachineTypeList from JSON data */
  MachineTypeList.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new MachineType.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for MachineTypeList */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of MachineTypeList */
  String toString() => JSON.stringify(this.toJson());

}

/** A metadata key/value entry. */
class Metadata {

  /** Fingerprint of this resource. A hash of the metadata's contents. This field is used for optimistic locking. An up-to-date metadata fingerprint must be provided in order to modify metadata. */
  String fingerprint;

  /** Array of key/value pairs. The total size of all keys and values must be less than 512 KB. */
  List<MetadataItems> items;

  /** Type of the resource. */
  String kind;

  /** Create new Metadata from JSON data */
  Metadata.fromJson(Map json) {
    if (json.containsKey("fingerprint")) {
      fingerprint = json["fingerprint"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new MetadataItems.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Metadata */
  Map toJson() {
    var output = new Map();

    if (fingerprint != null) {
      output["fingerprint"] = fingerprint;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Metadata */
  String toString() => JSON.stringify(this.toJson());

}

class MetadataItems {

  /** Key for the metadata entry. Keys must conform to the following regexp: [a-zA-Z0-9-_]+, and be less than 128 bytes in length. This is reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project. */
  String key;

  /** Value for the metadata entry. These are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on values is that their size must be less than or equal to 32768 bytes. */
  String value;

  /** Create new MetadataItems from JSON data */
  MetadataItems.fromJson(Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for MetadataItems */
  Map toJson() {
    var output = new Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of MetadataItems */
  String toString() => JSON.stringify(this.toJson());

}

/** A network resource. */
class Network {

  /** Required; The range of internal addresses that are legal on this network. This range is a CIDR specification, for example: 192.168.0.0/16. Provided by the client when the network is created. */
  String IPv4Range;

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  String description;

  /** An optional address that is used for default routing to other networks. This must be within the range specified by IPv4Range, and is typically the first usable address in that range. If not specified, the default value is the first usable address in IPv4Range. */
  String gatewayIPv4;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** Type of the resource. */
  String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  String name;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** Create new Network from JSON data */
  Network.fromJson(Map json) {
    if (json.containsKey("IPv4Range")) {
      IPv4Range = json["IPv4Range"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("gatewayIPv4")) {
      gatewayIPv4 = json["gatewayIPv4"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Network */
  Map toJson() {
    var output = new Map();

    if (IPv4Range != null) {
      output["IPv4Range"] = IPv4Range;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (gatewayIPv4 != null) {
      output["gatewayIPv4"] = gatewayIPv4;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Network */
  String toString() => JSON.stringify(this.toJson());

}

/** A network interface resource attached to an instance. */
class NetworkInterface {

  /** Array of configurations for this interface. This specifies how this interface is configured to interact with other network services, such as connecting to the internet. Currently, ONE_TO_ONE_NAT is the only access config supported. If there are no accessConfigs specified, then this instance will have no external internet access. */
  List<AccessConfig> accessConfigs;

  /** Name of the network interface, determined by the server; for network devices, these are e.g. eth0, eth1, etc. (output only). */
  String name;

  /** URL of the network resource attached to this interface. */
  String network;

  /** An optional IPV4 internal network address to assign to the instance for this network interface. If not specified, one will be assigned from the available range. */
  String networkIP;

  /** Create new NetworkInterface from JSON data */
  NetworkInterface.fromJson(Map json) {
    if (json.containsKey("accessConfigs")) {
      accessConfigs = [];
      json["accessConfigs"].forEach((item) {
        accessConfigs.add(new AccessConfig.fromJson(item));
      });
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("network")) {
      network = json["network"];
    }
    if (json.containsKey("networkIP")) {
      networkIP = json["networkIP"];
    }
  }

  /** Create JSON Object for NetworkInterface */
  Map toJson() {
    var output = new Map();

    if (accessConfigs != null) {
      output["accessConfigs"] = new List();
      accessConfigs.forEach((item) {
        output["accessConfigs"].add(item.toJson());
      });
    }
    if (name != null) {
      output["name"] = name;
    }
    if (network != null) {
      output["network"] = network;
    }
    if (networkIP != null) {
      output["networkIP"] = networkIP;
    }

    return output;
  }

  /** Return String representation of NetworkInterface */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains a list of network resources. */
class NetworkList {

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** The network resources. */
  List<Network> items;

  /** Type of resource. */
  String kind;

  /** A token used to continue a truncated list request (output only). */
  String nextPageToken;

  /** Server defined URL for this resource (output only). */
  String selfLink;

  /** Create new NetworkList from JSON data */
  NetworkList.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Network.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for NetworkList */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of NetworkList */
  String toString() => JSON.stringify(this.toJson());

}

/** An operation resource, used to manage asynchronous API requests. */
class Operation {

  /** An optional identifier specified by the client when the mutation was initiated. Must be unique for all operation resources in the project (output only). */
  String clientOperationId;

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** The time that this operation was completed. This is in RFC 3339 format (output only). */
  String endTime;

  /** If errors occurred during processing of this operation, this field will be populated (output only). */
  OperationError error;

  /** If operation fails, the HTTP error message returned, e.g. NOT FOUND. (output only). */
  String httpErrorMessage;

  /** If operation fails, the HTTP error status code returned, e.g. 404. (output only). */
  int httpErrorStatusCode;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** The time that this operation was requested. This is in RFC 3339 format (output only). */
  String insertTime;

  /** Type of the resource. */
  String kind;

  /** Name of the resource (output only). */
  String name;

  /** Type of the operation. Examples include "insert", "update", and "delete" (output only). */
  String operationType;

  /** An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess at when the operation will be complete. This number should be monotonically increasing as the operation progresses (output only). */
  int progress;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** The time that this operation was started by the server. This is in RFC 3339 format (output only). */
  String startTime;

  /** Status of the operation. Can be one of the following: "PENDING", "RUNNING", or "DONE" (output only). */
  String status;

  /** An optional textual description of the current status of the operation (output only). */
  String statusMessage;

  /** Unique target id which identifies a particular incarnation of the target (output only). */
  String targetId;

  /** URL of the resource the operation is mutating (output only). */
  String targetLink;

  /** User who requested the operation, for example "user@example.com" (output only). */
  String user;

  /** If warning messages generated during processing of this operation, this field will be populated (output only). */
  List<OperationWarnings> warnings;

  /** URL of the zone where the operation resides (output only). */
  String zone;

  /** Create new Operation from JSON data */
  Operation.fromJson(Map json) {
    if (json.containsKey("clientOperationId")) {
      clientOperationId = json["clientOperationId"];
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("error")) {
      error = new OperationError.fromJson(json["error"]);
    }
    if (json.containsKey("httpErrorMessage")) {
      httpErrorMessage = json["httpErrorMessage"];
    }
    if (json.containsKey("httpErrorStatusCode")) {
      httpErrorStatusCode = json["httpErrorStatusCode"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("insertTime")) {
      insertTime = json["insertTime"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("operationType")) {
      operationType = json["operationType"];
    }
    if (json.containsKey("progress")) {
      progress = json["progress"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("statusMessage")) {
      statusMessage = json["statusMessage"];
    }
    if (json.containsKey("targetId")) {
      targetId = json["targetId"];
    }
    if (json.containsKey("targetLink")) {
      targetLink = json["targetLink"];
    }
    if (json.containsKey("user")) {
      user = json["user"];
    }
    if (json.containsKey("warnings")) {
      warnings = [];
      json["warnings"].forEach((item) {
        warnings.add(new OperationWarnings.fromJson(item));
      });
    }
    if (json.containsKey("zone")) {
      zone = json["zone"];
    }
  }

  /** Create JSON Object for Operation */
  Map toJson() {
    var output = new Map();

    if (clientOperationId != null) {
      output["clientOperationId"] = clientOperationId;
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (error != null) {
      output["error"] = error.toJson();
    }
    if (httpErrorMessage != null) {
      output["httpErrorMessage"] = httpErrorMessage;
    }
    if (httpErrorStatusCode != null) {
      output["httpErrorStatusCode"] = httpErrorStatusCode;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (insertTime != null) {
      output["insertTime"] = insertTime;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (operationType != null) {
      output["operationType"] = operationType;
    }
    if (progress != null) {
      output["progress"] = progress;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (statusMessage != null) {
      output["statusMessage"] = statusMessage;
    }
    if (targetId != null) {
      output["targetId"] = targetId;
    }
    if (targetLink != null) {
      output["targetLink"] = targetLink;
    }
    if (user != null) {
      output["user"] = user;
    }
    if (warnings != null) {
      output["warnings"] = new List();
      warnings.forEach((item) {
        output["warnings"].add(item.toJson());
      });
    }
    if (zone != null) {
      output["zone"] = zone;
    }

    return output;
  }

  /** Return String representation of Operation */
  String toString() => JSON.stringify(this.toJson());

}

class OperationWarnings {

  /** The warning type identifier for this warning. */
  String code;

  /** Metadata for this warning in 'key: value' format. */
  List<OperationWarningsData> data;

  /** Optional human-readable details for this warning. */
  String message;

  /** Create new OperationWarnings from JSON data */
  OperationWarnings.fromJson(Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("data")) {
      data = [];
      json["data"].forEach((item) {
        data.add(new OperationWarningsData.fromJson(item));
      });
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for OperationWarnings */
  Map toJson() {
    var output = new Map();

    if (code != null) {
      output["code"] = code;
    }
    if (data != null) {
      output["data"] = new List();
      data.forEach((item) {
        output["data"].add(item.toJson());
      });
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of OperationWarnings */
  String toString() => JSON.stringify(this.toJson());

}

class OperationWarningsData {

  /** A key for the warning data. */
  String key;

  /** A warning data value corresponding to the key. */
  String value;

  /** Create new OperationWarningsData from JSON data */
  OperationWarningsData.fromJson(Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for OperationWarningsData */
  Map toJson() {
    var output = new Map();

    if (key != null) {
      output["key"] = key;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of OperationWarningsData */
  String toString() => JSON.stringify(this.toJson());

}

/** If errors occurred during processing of this operation, this field will be populated (output only). */
class OperationError {

  /** The array of errors encountered while processing this operation. */
  List<OperationErrorErrors> errors;

  /** Create new OperationError from JSON data */
  OperationError.fromJson(Map json) {
    if (json.containsKey("errors")) {
      errors = [];
      json["errors"].forEach((item) {
        errors.add(new OperationErrorErrors.fromJson(item));
      });
    }
  }

  /** Create JSON Object for OperationError */
  Map toJson() {
    var output = new Map();

    if (errors != null) {
      output["errors"] = new List();
      errors.forEach((item) {
        output["errors"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of OperationError */
  String toString() => JSON.stringify(this.toJson());

}

class OperationErrorErrors {

  /** The error type identifier for this error. */
  String code;

  /** Indicates the field in the request which caused the error. This property is optional. */
  String location;

  /** An optional, human-readable error message. */
  String message;

  /** Create new OperationErrorErrors from JSON data */
  OperationErrorErrors.fromJson(Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for OperationErrorErrors */
  Map toJson() {
    var output = new Map();

    if (code != null) {
      output["code"] = code;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of OperationErrorErrors */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains a list of operation resources. */
class OperationList {

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** The operation resources. */
  List<Operation> items;

  /** Type of resource. */
  String kind;

  /** A token used to continue a truncated list request (output only). */
  String nextPageToken;

  /** Server defined URL for this resource (output only). */
  String selfLink;

  /** Create new OperationList from JSON data */
  OperationList.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Operation.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for OperationList */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of OperationList */
  String toString() => JSON.stringify(this.toJson());

}

/** A project resource. Projects can be created only in the APIs Console. Unless marked otherwise, values can only be modified in the console. */
class Project {

  /** Metadata key/value pairs available to all instances contained in this project. */
  Metadata commonInstanceMetadata;

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** An optional textual description of the resource. */
  String description;

  /** Internet available IP addresses available for use in this project. */
  List<String> externalIpAddresses;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** Type of the resource. */
  String kind;

  /** Name of the resource. */
  String name;

  /** Quotas assigned to this project. */
  List<Quota> quotas;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** Create new Project from JSON data */
  Project.fromJson(Map json) {
    if (json.containsKey("commonInstanceMetadata")) {
      commonInstanceMetadata = new Metadata.fromJson(json["commonInstanceMetadata"]);
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("externalIpAddresses")) {
      externalIpAddresses = [];
      json["externalIpAddresses"].forEach((item) {
        externalIpAddresses.add(item);
      });
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("quotas")) {
      quotas = [];
      json["quotas"].forEach((item) {
        quotas.add(new Quota.fromJson(item));
      });
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Project */
  Map toJson() {
    var output = new Map();

    if (commonInstanceMetadata != null) {
      output["commonInstanceMetadata"] = commonInstanceMetadata.toJson();
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (externalIpAddresses != null) {
      output["externalIpAddresses"] = new List();
      externalIpAddresses.forEach((item) {
        output["externalIpAddresses"].add(item);
      });
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (quotas != null) {
      output["quotas"] = new List();
      quotas.forEach((item) {
        output["quotas"].add(item.toJson());
      });
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Project */
  String toString() => JSON.stringify(this.toJson());

}

/** A quotas entry. */
class Quota {

  /** Quota limit for this metric. */
  num limit;

  /** Name of the quota metric. */
  String metric;

  /** Current usage of this metric. */
  num usage;

  /** Create new Quota from JSON data */
  Quota.fromJson(Map json) {
    if (json.containsKey("limit")) {
      limit = json["limit"];
    }
    if (json.containsKey("metric")) {
      metric = json["metric"];
    }
    if (json.containsKey("usage")) {
      usage = json["usage"];
    }
  }

  /** Create JSON Object for Quota */
  Map toJson() {
    var output = new Map();

    if (limit != null) {
      output["limit"] = limit;
    }
    if (metric != null) {
      output["metric"] = metric;
    }
    if (usage != null) {
      output["usage"] = usage;
    }

    return output;
  }

  /** Return String representation of Quota */
  String toString() => JSON.stringify(this.toJson());

}

/** An instance serial console output. */
class SerialPortOutput {

  /** The contents of the console output. */
  String contents;

  /** Type of the resource. */
  String kind;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** Create new SerialPortOutput from JSON data */
  SerialPortOutput.fromJson(Map json) {
    if (json.containsKey("contents")) {
      contents = json["contents"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for SerialPortOutput */
  Map toJson() {
    var output = new Map();

    if (contents != null) {
      output["contents"] = contents;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of SerialPortOutput */
  String toString() => JSON.stringify(this.toJson());

}

/** A service account. */
class ServiceAccount {

  /** Email address of the service account. */
  String email;

  /** The list of scopes to be made available for this service account. */
  List<String> scopes;

  /** Create new ServiceAccount from JSON data */
  ServiceAccount.fromJson(Map json) {
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("scopes")) {
      scopes = [];
      json["scopes"].forEach((item) {
        scopes.add(item);
      });
    }
  }

  /** Create JSON Object for ServiceAccount */
  Map toJson() {
    var output = new Map();

    if (email != null) {
      output["email"] = email;
    }
    if (scopes != null) {
      output["scopes"] = new List();
      scopes.forEach((item) {
        output["scopes"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of ServiceAccount */
  String toString() => JSON.stringify(this.toJson());

}

/** A persistent disk snapshot resource. */
class Snapshot {

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** An optional textual description of the resource; provided by the client when the resource is created. */
  String description;

  /** Size of the persistent disk snapshot, specified in GB (output only). */
  String diskSizeGb;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** Type of the resource. */
  String kind;

  /** Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. */
  String name;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** The source disk used to create this snapshot. Once the source disk has been deleted from the system, this field will be cleared, and will not be set even if a disk with the same name has been re-created. */
  String sourceDisk;

  /** The 'id' value of the disk used to create this snapshot. This value may be used to determine whether the snapshot was taken from the current or a previous instance of a given disk name. */
  String sourceDiskId;

  /** The status of the persistent disk snapshot (output only). */
  String status;

  /** Create new Snapshot from JSON data */
  Snapshot.fromJson(Map json) {
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("diskSizeGb")) {
      diskSizeGb = json["diskSizeGb"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("sourceDisk")) {
      sourceDisk = json["sourceDisk"];
    }
    if (json.containsKey("sourceDiskId")) {
      sourceDiskId = json["sourceDiskId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Snapshot */
  Map toJson() {
    var output = new Map();

    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (diskSizeGb != null) {
      output["diskSizeGb"] = diskSizeGb;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (sourceDisk != null) {
      output["sourceDisk"] = sourceDisk;
    }
    if (sourceDiskId != null) {
      output["sourceDiskId"] = sourceDiskId;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Snapshot */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains a list of persistent disk snapshot resources. */
class SnapshotList {

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** The persistent snapshot resources. */
  List<Snapshot> items;

  /** Type of resource. */
  String kind;

  /** A token used to continue a truncated list request (output only). */
  String nextPageToken;

  /** Server defined URL for this resource (output only). */
  String selfLink;

  /** Create new SnapshotList from JSON data */
  SnapshotList.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Snapshot.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for SnapshotList */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of SnapshotList */
  String toString() => JSON.stringify(this.toJson());

}

/** A set of instance tags. */
class Tags {

  /** Fingerprint of this resource. A hash of the tags stored in this object. This field is used optimistic locking. An up-to-date tags fingerprint must be provided in order to modify tags. */
  String fingerprint;

  /** An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035. */
  List<String> items;

  /** Create new Tags from JSON data */
  Tags.fromJson(Map json) {
    if (json.containsKey("fingerprint")) {
      fingerprint = json["fingerprint"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(item);
      });
    }
  }

  /** Create JSON Object for Tags */
  Map toJson() {
    var output = new Map();

    if (fingerprint != null) {
      output["fingerprint"] = fingerprint;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of Tags */
  String toString() => JSON.stringify(this.toJson());

}

/** A zone resource. */
class Zone {

  /** The machine types that can be used in this zone (output only). */
  List<String> availableMachineType;

  /** Creation timestamp in RFC3339 text format (output only). */
  String creationTimestamp;

  /** The deprecation status associated with this zone. */
  DeprecationStatus deprecated;

  /** Textual description of the resource. */
  String description;

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** Type of the resource. */
  String kind;

  /** Scheduled maintenance windows for the zone. When the zone is in a maintenance window, all resources which reside in the zone will be unavailable. */
  List<ZoneMaintenanceWindows> maintenanceWindows;

  /** Name of the resource. */
  String name;

  /** Quotas assigned to this zone. */
  List<Quota> quotas;

  /** Server defined URL for the resource (output only). */
  String selfLink;

  /** Status of the zone. "UP" or "DOWN". */
  String status;

  /** Create new Zone from JSON data */
  Zone.fromJson(Map json) {
    if (json.containsKey("availableMachineType")) {
      availableMachineType = [];
      json["availableMachineType"].forEach((item) {
        availableMachineType.add(item);
      });
    }
    if (json.containsKey("creationTimestamp")) {
      creationTimestamp = json["creationTimestamp"];
    }
    if (json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(json["deprecated"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maintenanceWindows")) {
      maintenanceWindows = [];
      json["maintenanceWindows"].forEach((item) {
        maintenanceWindows.add(new ZoneMaintenanceWindows.fromJson(item));
      });
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("quotas")) {
      quotas = [];
      json["quotas"].forEach((item) {
        quotas.add(new Quota.fromJson(item));
      });
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Zone */
  Map toJson() {
    var output = new Map();

    if (availableMachineType != null) {
      output["availableMachineType"] = new List();
      availableMachineType.forEach((item) {
        output["availableMachineType"].add(item);
      });
    }
    if (creationTimestamp != null) {
      output["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      output["deprecated"] = deprecated.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maintenanceWindows != null) {
      output["maintenanceWindows"] = new List();
      maintenanceWindows.forEach((item) {
        output["maintenanceWindows"].add(item.toJson());
      });
    }
    if (name != null) {
      output["name"] = name;
    }
    if (quotas != null) {
      output["quotas"] = new List();
      quotas.forEach((item) {
        output["quotas"].add(item.toJson());
      });
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Zone */
  String toString() => JSON.stringify(this.toJson());

}

class ZoneMaintenanceWindows {

  /** Begin time of the maintenance window, in RFC 3339 format. */
  String beginTime;

  /** Textual description of the maintenance window. */
  String description;

  /** End time of the maintenance window, in RFC 3339 format. */
  String endTime;

  /** Name of the maintenance window. */
  String name;

  /** Create new ZoneMaintenanceWindows from JSON data */
  ZoneMaintenanceWindows.fromJson(Map json) {
    if (json.containsKey("beginTime")) {
      beginTime = json["beginTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ZoneMaintenanceWindows */
  Map toJson() {
    var output = new Map();

    if (beginTime != null) {
      output["beginTime"] = beginTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ZoneMaintenanceWindows */
  String toString() => JSON.stringify(this.toJson());

}

/** Contains a list of zone resources. */
class ZoneList {

  /** Unique identifier for the resource; defined by the server (output only). */
  String id;

  /** The zone resources. */
  List<Zone> items;

  /** Type of resource. */
  String kind;

  /** A token used to continue a truncated list request (output only). */
  String nextPageToken;

  /** Server defined URL for this resource (output only). */
  String selfLink;

  /** Create new ZoneList from JSON data */
  ZoneList.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Zone.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for ZoneList */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of ZoneList */
  String toString() => JSON.stringify(this.toJson());

}

