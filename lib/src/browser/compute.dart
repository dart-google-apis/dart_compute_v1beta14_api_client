part of compute_v1beta14_api_browser;

/** Client to access the compute v1beta14 API */
/** API for the Google Compute Engine service. */
class Compute extends BrowserClient {

  DisksResource _disks;
  DisksResource get disks => _disks;
  FirewallsResource _firewalls;
  FirewallsResource get firewalls => _firewalls;
  GlobalOperationsResource _globalOperations;
  GlobalOperationsResource get globalOperations => _globalOperations;
  ImagesResource _images;
  ImagesResource get images => _images;
  InstancesResource _instances;
  InstancesResource get instances => _instances;
  KernelsResource _kernels;
  KernelsResource get kernels => _kernels;
  MachineTypesResource _machineTypes;
  MachineTypesResource get machineTypes => _machineTypes;
  NetworksResource _networks;
  NetworksResource get networks => _networks;
  ProjectsResource _projects;
  ProjectsResource get projects => _projects;
  SnapshotsResource _snapshots;
  SnapshotsResource get snapshots => _snapshots;
  ZoneOperationsResource _zoneOperations;
  ZoneOperationsResource get zoneOperations => _zoneOperations;
  ZonesResource _zones;
  ZonesResource get zones => _zones;

  /** OAuth Scope2: View and manage your Google Compute Engine resources */
  static const core.String COMPUTE_SCOPE = "https://www.googleapis.com/auth/compute";

  /** OAuth Scope2: View your Google Compute Engine resources */
  static const core.String COMPUTE_READONLY_SCOPE = "https://www.googleapis.com/auth/compute.readonly";

  /** OAuth Scope2: View your data in Google Cloud Storage */
  static const core.String DEVSTORAGE_READ_ONLY_SCOPE = "https://www.googleapis.com/auth/devstorage.read_only";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Compute([oauth.OAuth2 auth]) : super(auth) {
    basePath = "/compute/v1beta14/projects/";
    rootUrl = "https://www.googleapis.com:443/";
    _disks = new DisksResource(this);
    _firewalls = new FirewallsResource(this);
    _globalOperations = new GlobalOperationsResource(this);
    _images = new ImagesResource(this);
    _instances = new InstancesResource(this);
    _kernels = new KernelsResource(this);
    _machineTypes = new MachineTypesResource(this);
    _networks = new NetworksResource(this);
    _projects = new ProjectsResource(this);
    _snapshots = new SnapshotsResource(this);
    _zoneOperations = new ZoneOperationsResource(this);
    _zones = new ZonesResource(this);
  }
}
