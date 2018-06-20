import 'dart:convert';

import 'package:test/test.dart';

import 'package:dart_k8s_controller/k8sapi.dart';

String _encode(Object object) =>
    const JsonEncoder.withIndent(' ').convert(object);


main() {

//  test("K8s API works", (){
//    var meta = new Metadata(labels: { "foo": "bar"});
//
//    var j = meta.toJson();
//    print("json = $j");
//    //expect(j['name'], equals("metadata"));
//
//    var nginx = new Container("nginx", image: "nginx");
//
//    var pod = new PodSpec(containers: [nginx], initContainers: [nginx]);
//
//    j = pod.toJson();
//
//    print("json = $j}");
//
//  });

  test("k8sapi",(){
    var c = new Container(name: "nginx", image: "nginx");
    var pod = new PodSpec(containers: [c]);

    var j= _encode(pod);

    print("$j");

    var deployment = new Deployment(
        metadata: new ObjectMeta(name: "openig", labels: {"name": "openig"}),
        spec: new DeploymentSpec()
        );

    expect(deployment.kind, equals("Deployment"));
    j = _encode(deployment);

    print("Dep = $j");
  });

}