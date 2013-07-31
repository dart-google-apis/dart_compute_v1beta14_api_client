# google_compute_v1beta14_api

### Description

Auto-generated client library for accessing the compute v1beta14 API.

#### ![Logo](http://www.google.com/images/icons/product/compute_engine-16.png) Compute Engine API - compute v1beta14

API for the Google Compute Engine service.

Official API documentation: https://developers.google.com/compute/docs/reference/v1beta14

Adding dependency to pubspec.yaml

```
  dependencies:
    google_compute_v1beta14_api: '>=0.3.8'
```

For web applications:

```
  import "package:google_compute_v1beta14_api/compute_v1beta14_api_browser.dart" as computeclient;
```

For console application:

```
  import "package:google_compute_v1beta14_api/compute_v1beta14_api_console.dart" as computeclient;
```

Working with out authentication the following constructor can be called:

```
  var compute = new computeclient.Compute();
```

Working with authentication then create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var compute = new computeclient.Compute(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
