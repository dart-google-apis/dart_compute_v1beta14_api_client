part of compute_v1beta14_api_client;

class DisksResource_ extends Resource {

  DisksResource_(Client client) : super(client) {
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
  async.Future<Operation> delete(core.String project, core.String zone, core.String disk, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/disks/{disk}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Disk> get(core.String project, core.String zone, core.String disk, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/disks/{disk}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> insert(Disk request, core.String project, core.String zone, {core.String sourceImage, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/disks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<DiskList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/disks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class FirewallsResource_ extends Resource {

  FirewallsResource_(Client client) : super(client) {
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
  async.Future<Operation> delete(core.String project, core.String firewall, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/firewalls/{firewall}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Firewall> get(core.String project, core.String firewall, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/firewalls/{firewall}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> insert(Firewall request, core.String project, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/firewalls";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<FirewallList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/firewalls";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> patch(Firewall request, core.String project, core.String firewall, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/firewalls/{firewall}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> update(Firewall request, core.String project, core.String firewall, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/firewalls/{firewall}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class GlobalOperationsResource_ extends Resource {

  GlobalOperationsResource_(Client client) : super(client) {
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
  async.Future<core.Map> delete(core.String project, core.String operation, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/operations/{operation}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> get(core.String project, core.String operation, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/operations/{operation}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<OperationList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/operations";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class ImagesResource_ extends Resource {

  ImagesResource_(Client client) : super(client) {
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
  async.Future<Operation> delete(core.String project, core.String image, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/images/{image}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> deprecate(DeprecationStatus request, core.String project, core.String image, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/images/{image}/deprecate";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Image> get(core.String project, core.String image, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/images/{image}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> insert(Image request, core.String project, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/images";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<ImageList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/images";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class InstancesResource_ extends Resource {

  InstancesResource_(Client client) : super(client) {
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
  async.Future<Operation> addAccessConfig(AccessConfig request, core.String project, core.String zone, core.String instance, core.String network_interface, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/addAccessConfig";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> attachDisk(AttachedDisk request, core.String project, core.String zone, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/attachDisk";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> delete(core.String project, core.String zone, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances/{instance}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> deleteAccessConfig(core.String project, core.String zone, core.String instance, core.String access_config, core.String network_interface, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/deleteAccessConfig";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> detachDisk(core.String project, core.String zone, core.String instance, core.String deviceName, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/detachDisk";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Instance> get(core.String project, core.String zone, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances/{instance}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<SerialPortOutput> getSerialPortOutput(core.String project, core.String zone, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/serialPort";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> insert(Instance request, core.String project, core.String zone, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<InstanceList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> setMetadata(Metadata request, core.String project, core.String zone, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/setMetadata";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> setTags(Tags request, core.String project, core.String zone, core.String instance, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/instances/{instance}/setTags";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class KernelsResource_ extends Resource {

  KernelsResource_(Client client) : super(client) {
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
  async.Future<Kernel> get(core.String project, core.String kernel, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/kernels/{kernel}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<KernelList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/kernels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class MachineTypesResource_ extends Resource {

  MachineTypesResource_(Client client) : super(client) {
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
  async.Future<MachineType> get(core.String project, core.String machineType, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/machineTypes/{machineType}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<MachineTypeList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/machineTypes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class NetworksResource_ extends Resource {

  NetworksResource_(Client client) : super(client) {
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
  async.Future<Operation> delete(core.String project, core.String network, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/networks/{network}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Network> get(core.String project, core.String network, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/networks/{network}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> insert(Network request, core.String project, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/networks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<NetworkList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/networks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class ProjectsResource_ extends Resource {

  ProjectsResource_(Client client) : super(client) {
  }

  /**
   * Returns the specified project resource.
   *
   * [project] - Name of the project resource to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Project> get(core.String project, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> setCommonInstanceMetadata(Metadata request, core.String project, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/setCommonInstanceMetadata";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class RoutesResource_ extends Resource {

  RoutesResource_(Client client) : super(client) {
  }

  /**
   * Deletes the specified route resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [route] - Name of the route resource to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Operation> delete(core.String project, core.String route, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/routes/{route}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (route == null) paramErrors.add("route is required");
    if (route != null) urlParams["route"] = route;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
   * Returns the specified route resource.
   *
   * [project] - Name of the project scoping this request.
   *
   * [route] - Name of the route resource to return.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Route> get(core.String project, core.String route, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/routes/{route}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (route == null) paramErrors.add("route is required");
    if (route != null) urlParams["route"] = route;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Route.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a route resource in the specified project using the data included in the request.
   *
   * [request] - Route to send in this request
   *
   * [project] - Name of the project scoping this request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Operation> insert(Route request, core.String project, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/routes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
   * Retrieves the list of route resources available to the specified project.
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
  async.Future<RouteList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/routes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new RouteList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class SnapshotsResource_ extends Resource {

  SnapshotsResource_(Client client) : super(client) {
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
  async.Future<Operation> delete(core.String project, core.String snapshot, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/snapshots/{snapshot}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Snapshot> get(core.String project, core.String snapshot, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/snapshots/{snapshot}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> insert(Snapshot request, core.String project, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/snapshots";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<SnapshotList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/global/snapshots";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class ZoneOperationsResource_ extends Resource {

  ZoneOperationsResource_(Client client) : super(client) {
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
  async.Future<core.Map> delete(core.String project, core.String zone, core.String operation, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/operations/{operation}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Operation> get(core.String project, core.String zone, core.String operation, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/operations/{operation}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<OperationList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}/operations";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class ZonesResource_ extends Resource {

  ZonesResource_(Client client) : super(client) {
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
  async.Future<Zone> get(core.String project, core.String zone, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones/{zone}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<ZoneList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/zones";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

