'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/asset/ahlanpdflogo.png": "64d6c2629aefbcc66825912e4fee39e8",
"assets/asset/belicon.png": "12b0554ed5d1afda573854181b295be9",
"assets/asset/bell2.png": "12b0554ed5d1afda573854181b295be9",
"assets/asset/dot.png": "f9c3c9c3f6982e4dbf13c09b33fd84af",
"assets/asset/dot1.png": "dc7565426269f8c9b61df7dde11b7af8",
"assets/asset/icon1.png": "58fba9a7644720364b261de39932f87e",
"assets/asset/icon2.png": "a547f73b00c2d6f670eb007815c58a70",
"assets/asset/logo.png": "35114bacf6b1c5e97d604f4b08a994a0",
"assets/asset/logo1.png": "7fcefeb39fd150e41317641914fb3e0d",
"assets/asset/menu.png": "fc3b796cd1ff1866150832301f01c3b1",
"assets/asset/menuicon1.png": "139e64ff5529c0e392e128a49bf982ab",
"assets/asset/menuicon2.png": "e264249a0edd7f3639925e3276c9a55e",
"assets/asset/menuicon3.png": "b8ab8d7b959b1debae15334b922d3cee",
"assets/asset/menuicon4.png": "a013b5463d4a3133d881f950fb984bc0",
"assets/asset/menuicon5.png": "6df67851c5356f4a6c22f7393b8460de",
"assets/asset/menuicon6.png": "6f583f12fe6eed31b967377b187a9247",
"assets/asset/profile.png": "b0d7ed5cd5e2a32ffee5b3678a53b4d1",
"assets/asset/purchase.png": "97aa561cb69507441824c25e1b99b8ea",
"assets/asset/purchase1.png": "97aa561cb69507441824c25e1b99b8ea",
"assets/asset/purchase2.png": "aa506d5e3fa856a57da2906aa83d11f5",
"assets/asset/purchase3.png": "2a9ce6705767b4449e7e0b00ae5a3fd0",
"assets/asset/purchase4.png": "18b296c2870f86554f7000e0e7b64a94",
"assets/asset/purchase5.png": "24dc4f92ed9fe675b063aa002d097741",
"assets/asset/purchase6.png": "65999a2e5af39a2053edc876b832f751",
"assets/asset/rect1.png": "92a25ea918de9406f359cc698a965c6d",
"assets/asset/rect2.png": "9f4d6762e467ecdbb6599808e2808b04",
"assets/asset/righticon3s.png": "060f7b40afe497da03e9ef8c46f50331",
"assets/asset/rightmenu.png": "7c77aa7f440cf17da22f6de7de2153dc",
"assets/asset/rightmenu1.png": "5367be96c8ec0354d37843a96757ac6b",
"assets/asset/rightmenu1s.png": "f57cb1653434b952e06028c4fc481f44",
"assets/asset/rightmenu2.png": "8d3b8dcaea5ca709abea67ebf47227d6",
"assets/asset/rightmenu2s.png": "732adb3c1e6f53c4eae38e774fe6f4c0",
"assets/asset/rightmenu3.png": "2fb48b2168b6b3af8786ac2cc92055b6",
"assets/asset/rightmenu4.png": "e557fd714f31e973b5d57ba64eea43fd",
"assets/asset/rightmenu5.png": "fd0d4149442c74275a45fa9f4e11421c",
"assets/asset/rightmenu6.png": "1567808544b730356b3b5dad61d5cc05",
"assets/asset/setting.png": "1b383a650fb82eff91c52936c2b00b96",
"assets/asset/vector1.png": "6bc1ee1b901ff1020d996a3db91ba51c",
"assets/AssetManifest.json": "94cf3e522b59f11f647b1df37f3c651b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "8ae6bdff6396e428f45c2a6b4f825588",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "0816e65a103ba8ba51b174eeeeb2cb67",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2a630c37caec3a43bd7028a75dd28d13",
"/": "2a630c37caec3a43bd7028a75dd28d13",
"main.dart.js": "1ed7efc08de7dfaa3c4243a5b35eac47",
"manifest.json": "22ac72de1de979efdee55386f3e9ba6f",
"version.json": "6ff04479ae5bf44c167e1a7fdbf94ec2"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
