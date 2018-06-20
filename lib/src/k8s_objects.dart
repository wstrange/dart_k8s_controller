

abstract class KubeObject {
  Object toJson();
}

class KubeMapObject extends KubeObject {
  String _name;
  Map<String,KubeObject> _children = {};
  KubeMapObject(this._name);

  Map toJson() {
    Map m = {};
    _children.forEach( (k,v) => m[k] = v.toJson());
    return { _name: m };
  }

  add(String name, KubeObject child) {
    _children[name] = child;
  }
}

class KubeArray extends KubeObject {
  String _name;
  List<KubeObject> items = [];

    KubeArray(this._name, {this.items});

  @override
  Object toJson() {
    var x = [];

    items.forEach( (e) => x.add(e.toJson()));
    return { _name : x };
  }


}

class Metadata extends KubeMapObject  {
  String name;
  Map annotations;
  Map labels;

  Metadata({this.labels: const {},this.annotations: const {}}):super('metadata');


  Map toJson() {
    var m = {
        'labels': labels,
        'annotations': annotations
    };
    return m;
  }
}

class PodSpec extends KubeMapObject {

  List<Container> containers = [];
  List<Container> initContainers = [];


  PodSpec({this.containers, this.initContainers: const []}):super("spec");

  @override
  Map toJson() {
    // TODO: implement toJson
    var x = [];
    containers.forEach( (c) => x.add(c.toJson()) );
    var m = {
      'containers': x
    };
    if( initContainers.isNotEmpty ) {
      x = [];
      initContainers.forEach( (c) => x.add(c.toJson()) );
      m['initContainers'] = x;
    }
    return m;
  }
}

class Container extends KubeMapObject {
  String name;
  String image;
  String imagePullPolicy;

  Container(this.name, {this.image, this.imagePullPolicy = "Always"}):super("name");

  Map<String,Object> toJson() {
    var m = {
      'name': name,
      'image': image,
      'imagePullPolicy': imagePullPolicy
    };
    return m;
  }
}