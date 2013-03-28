part of compute_v1beta14_api_client;

class DisksResource extends Resource {

  DisksResource(Client client) : super(client) {
  }

  /**
   * Deletes the specified persistent disk resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [disk] - Name of the persistent disk resource to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> delete(String project, String zone, String disk, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/disks/{disk}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (disk == null) paramErrors.add("disk is required");
    if (disk != null) urlParams["disk"] = disk;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the specified persistent disk resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [disk] - Name of the persistent disk resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<Disk> get(String project, String zone, String disk, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/disks/{disk}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (disk == null) paramErrors.add("disk is required");
    if (disk != null) urlParams["disk"] = disk;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Disk.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a persistent disk resource in the specified project using the data included in the request.
   *
   * [request] - Disk to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [sourceImage] - Optional. Source image to restore onto a disk.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> insert(Disk request, String project, String zone, {String sourceImage, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/disks";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (sourceImage != null) queryParams["sourceImage"] = sourceImage;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of persistent disk resources contained within the specified zone.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<DiskList> list(String project, String zone, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/disks";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DiskList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class FirewallsResource extends Resource {

  FirewallsResource(Client client) : super(client) {
  }

  /**
   * Deletes the specified firewall resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [firewall] - Name of the firewall resource to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> delete(String project, String firewall, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/firewalls/{firewall}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (firewall == null) paramErrors.add("firewall is required");
    if (firewall != null) urlParams["firewall"] = firewall;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the specified firewall resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [firewall] - Name of the firewall resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<Firewall> get(String project, String firewall, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/firewalls/{firewall}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (firewall == null) paramErrors.add("firewall is required");
    if (firewall != null) urlParams["firewall"] = firewall;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Firewall.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a firewall resource in the specified project using the data included in the request.
   *
   * [request] - Firewall to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> insert(Firewall request, String project, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/firewalls";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of firewall resources available to the specified project.
   *
   * [project] - Name of the project scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<FirewallList> list(String project, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/firewalls";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new FirewallList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates the specified firewall resource with the data included in the request. This method supports patch semantics.
   *
   * [request] - Firewall to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [firewall] - Name of the firewall resource to update.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> patch(Firewall request, String project, String firewall, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/firewalls/{firewall}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (firewall == null) paramErrors.add("firewall is required");
    if (firewall != null) urlParams["firewall"] = firewall;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates the specified firewall resource with the data included in the request.
   *
   * [request] - Firewall to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [firewall] - Name of the firewall resource to update.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> update(Firewall request, String project, String firewall, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/firewalls/{firewall}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (firewall == null) paramErrors.add("firewall is required");
    if (firewall != null) urlParams["firewall"] = firewall;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class GlobalOperationsResource extends Resource {

  GlobalOperationsResource(Client client) : super(client) {
  }

  /**
   * Deletes the specified operation resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [operation] - Name of the operation resource to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String project, String operation, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/operations/{operation}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (operation == null) paramErrors.add("operation is required");
    if (operation != null) urlParams["operation"] = operation;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the specified operation resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [operation] - Name of the operation resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> get(String project, String operation, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/operations/{operation}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (operation == null) paramErrors.add("operation is required");
    if (operation != null) urlParams["operation"] = operation;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of operation resources contained within the specified project.
   *
   * [project] - Name of the project scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<OperationList> list(String project, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/operations";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new OperationList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ImagesResource extends Resource {

  ImagesResource(Client client) : super(client) {
  }

  /**
   * Deletes the specified image resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [image] - Name of the image resource to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> delete(String project, String image, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/images/{image}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (image == null) paramErrors.add("image is required");
    if (image != null) urlParams["image"] = image;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Sets the deprecation status of an image. If no message body is given, clears the deprecation status instead.
   *
   * [request] - DeprecationStatus to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [image] - Image name.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> deprecate(DeprecationStatus request, String project, String image, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/images/{image}/deprecate";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (image == null) paramErrors.add("image is required");
    if (image != null) urlParams["image"] = image;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the specified image resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [image] - Name of the image resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<Image> get(String project, String image, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/images/{image}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (image == null) paramErrors.add("image is required");
    if (image != null) urlParams["image"] = image;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Image.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates an image resource in the specified project using the data included in the request.
   *
   * [request] - Image to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> insert(Image request, String project, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/images";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of image resources available to the specified project.
   *
   * [project] - Name of the project scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<ImageList> list(String project, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/images";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ImageList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class InstancesResource extends Resource {

  InstancesResource(Client client) : super(client) {
  }

  /**
   * Adds an access config to an instance's network interface.
   *
   * [request] - AccessConfig to send in this request
   *
   * [project] - Project name.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [instance] - Instance name.
   *
   * [network_interface] - Network interface name.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> addAccessConfig(AccessConfig request, String project, String zone, String instance, String network_interface, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/addAccessConfig";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (network_interface == null) paramErrors.add("network_interface is required");
    if (network_interface != null) queryParams["network_interface"] = network_interface;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Attaches a disk resource to an instance.
   *
   * [request] - AttachedDisk to send in this request
   *
   * [project] - Project name.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [instance] - Instance name.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> attachDisk(AttachedDisk request, String project, String zone, String instance, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/attachDisk";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Deletes the specified instance resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [instance] - Name of the instance resource to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> delete(String project, String zone, String instance, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances/{instance}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Deletes an access config from an instance's network interface.
   *
   * [project] - Project name.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [instance] - Instance name.
   *
   * [access_config] - Access config name.
   *
   * [network_interface] - Network interface name.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> deleteAccessConfig(String project, String zone, String instance, String access_config, String network_interface, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/deleteAccessConfig";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (access_config == null) paramErrors.add("access_config is required");
    if (access_config != null) queryParams["access_config"] = access_config;
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (network_interface == null) paramErrors.add("network_interface is required");
    if (network_interface != null) queryParams["network_interface"] = network_interface;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Detaches a disk from an instance.
   *
   * [project] - Project name.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [instance] - Instance name.
   *
   * [deviceName] - Disk device name to detach.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> detachDisk(String project, String zone, String instance, String deviceName, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/detachDisk";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (deviceName == null) paramErrors.add("deviceName is required");
    if (deviceName != null) queryParams["deviceName"] = deviceName;
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the specified instance resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [instance] - Name of the instance resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<Instance> get(String project, String zone, String instance, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances/{instance}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Instance.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the specified instance's serial port output.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [instance] - Name of the instance scoping this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<SerialPortOutput> getSerialPortOutput(String project, String zone, String instance, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/serialPort";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SerialPortOutput.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates an instance resource in the specified project using the data included in the request.
   *
   * [request] - Instance to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> insert(Instance request, String project, String zone, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of instance resources contained within the specified zone.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<InstanceList> list(String project, String zone, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new InstanceList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Sets metadata for the specified instance to the data included in the request.
   *
   * [request] - Metadata to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [instance] - Name of the instance scoping this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> setMetadata(Metadata request, String project, String zone, String instance, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/setMetadata";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Sets tags for the specified instance to the data included in the request.
   *
   * [request] - Tags to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [instance] - Name of the instance scoping this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> setTags(Tags request, String project, String zone, String instance, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/setTags";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class KernelsResource extends Resource {

  KernelsResource(Client client) : super(client) {
  }

  /**
   * Returns the specified kernel resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [kernel] - Name of the kernel resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<Kernel> get(String project, String kernel, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/kernels/{kernel}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (kernel == null) paramErrors.add("kernel is required");
    if (kernel != null) urlParams["kernel"] = kernel;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Kernel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of kernel resources available to the specified project.
   *
   * [project] - Name of the project scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<KernelList> list(String project, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/kernels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new KernelList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class MachineTypesResource extends Resource {

  MachineTypesResource(Client client) : super(client) {
  }

  /**
   * Returns the specified machine type resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [machineType] - Name of the machine type resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<MachineType> get(String project, String machineType, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/machineTypes/{machineType}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (machineType == null) paramErrors.add("machineType is required");
    if (machineType != null) urlParams["machineType"] = machineType;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new MachineType.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of machine type resources available to the specified project.
   *
   * [project] - Name of the project scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<MachineTypeList> list(String project, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/machineTypes";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new MachineTypeList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class NetworksResource extends Resource {

  NetworksResource(Client client) : super(client) {
  }

  /**
   * Deletes the specified network resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [network] - Name of the network resource to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> delete(String project, String network, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/networks/{network}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (network == null) paramErrors.add("network is required");
    if (network != null) urlParams["network"] = network;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the specified network resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [network] - Name of the network resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<Network> get(String project, String network, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/networks/{network}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (network == null) paramErrors.add("network is required");
    if (network != null) urlParams["network"] = network;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Network.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a network resource in the specified project using the data included in the request.
   *
   * [request] - Network to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> insert(Network request, String project, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/networks";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of network resources available to the specified project.
   *
   * [project] - Name of the project scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<NetworkList> list(String project, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/networks";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new NetworkList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ProjectsResource extends Resource {

  ProjectsResource(Client client) : super(client) {
  }

  /**
   * Returns the specified project resource.
   *
   * [project] - Name of the project resource to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  Future<Project> get(String project, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Project.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Sets metadata common to all instances within the specified project using the data included in the request.
   *
   * [request] - Metadata to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> setCommonInstanceMetadata(Metadata request, String project, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/setCommonInstanceMetadata";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class SnapshotsResource extends Resource {

  SnapshotsResource(Client client) : super(client) {
  }

  /**
   * Deletes the specified persistent disk snapshot resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [snapshot] - Name of the persistent disk snapshot resource to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> delete(String project, String snapshot, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/snapshots/{snapshot}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (snapshot == null) paramErrors.add("snapshot is required");
    if (snapshot != null) urlParams["snapshot"] = snapshot;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the specified persistent disk snapshot resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [snapshot] - Name of the persistent disk snapshot resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<Snapshot> get(String project, String snapshot, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/snapshots/{snapshot}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (snapshot == null) paramErrors.add("snapshot is required");
    if (snapshot != null) urlParams["snapshot"] = snapshot;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Snapshot.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a persistent disk snapshot resource in the specified project using the data included in the request.
   *
   * [request] - Snapshot to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> insert(Snapshot request, String project, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/snapshots";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of persistent disk snapshot resources contained within the specified project.
   *
   * [project] - Name of the project scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<SnapshotList> list(String project, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/global/snapshots";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SnapshotList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ZoneOperationsResource extends Resource {

  ZoneOperationsResource(Client client) : super(client) {
  }

  /**
   * Deletes the specified zone-specific operation resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [operation] - Name of the operation resource to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String project, String zone, String operation, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/operations/{operation}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (operation == null) paramErrors.add("operation is required");
    if (operation != null) urlParams["operation"] = operation;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the specified zone-specific operation resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [operation] - Name of the operation resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<Operation> get(String project, String zone, String operation, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/operations/{operation}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (operation == null) paramErrors.add("operation is required");
    if (operation != null) urlParams["operation"] = operation;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Operation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of operation resources contained within the specified zone.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<OperationList> list(String project, String zone, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}/operations";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new OperationList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ZonesResource extends Resource {

  ZonesResource(Client client) : super(client) {
  }

  /**
   * Returns the specified zone resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [zone] - Name of the zone resource to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<Zone> get(String project, String zone, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones/{zone}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (zone == null) paramErrors.add("zone is required");
    if (zone != null) urlParams["zone"] = zone;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Zone.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of zone resources available to the specified project.
   *
   * [project] - Name of the project scoping this request.
   *
   * [filter] - Optional. Filter expression for filtering listed resources.
   *
   * [maxResults] - Optional. Maximum count of results to be returned. Maximum and default value is 100.
   *   Default: 100
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  Future<ZoneList> list(String project, {String filter, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/zones";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filter != null) queryParams["filter"] = filter;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ZoneList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

