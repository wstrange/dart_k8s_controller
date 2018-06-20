
import 'src/k8s_objects.dart';

class IGController {
  IGController();

  Map<String, Object> sync(Map<String, Object> request) {
    var observed = request['parent'];

    var desired = {'status': {}, 'children': []};
  }

  Map<String, Object> newDeployment() {
    Metadata m = Metadata('ig', labels: {'app': 'test', 'name': 'test'});
    var d = {
      'apiVersion': 'apps/v1beta1',
      'kind': 'Deployment',
      'metadata': {
        'name': 'test',
        'labels': {'app': 'test', 'name': 'test'},
        'spec': {'replicas': 1, 'template': {}}
      }
    };

    return d;
  }

  Map<String,Object> _template() {
    var s= { 'template': {}};
    return s;
  }
}
