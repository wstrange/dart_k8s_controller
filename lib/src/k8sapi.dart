import 'package:json_annotation/json_annotation.dart';

part 'k8sapi.g.dart';

// https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/

// TODO: How do we merge in fields. metacontroler might send us fields
// we did not map. Need to either implement the entire spec, or
// find a way to patch the spec based on new state.


@JsonSerializable(includeIfNull:  false)
class ObjectMeta extends Object with _$ObjectMetaSerializerMixin {
  Map<String,String> annotations;
  Map<String,String> labels;
  String namespace;
  final String name;

  ObjectMeta({this.name, this.annotations, this.labels, this.namespace});

  factory ObjectMeta.fromJson(Map<String, dynamic> json) => _$ObjectMetaFromJson(json);
}


@JsonSerializable(includeIfNull:  false)
class LabelSelectorRequirement extends Object with _$LabelSelectorRequirementSerializerMixin {
  String key;
  String operator;
  List<String> values;

  LabelSelectorRequirement({this.key, this.operator, this.values});
  factory LabelSelectorRequirement.fromJson(Map<String, dynamic> json) => _$LabelSelectorRequirementFromJson(json);
}


@JsonSerializable(includeIfNull:  false)
class LabelSelector extends Object with _$LabelSelectorSerializerMixin {
  Map<String,Object> matchLabels;
  LabelSelectorRequirement matchExpressions;

  LabelSelector({this.matchLabels, this.matchExpressions});
  factory LabelSelector.fromJson(Map<String, dynamic> json) => _$LabelSelectorFromJson(json);

}



@JsonSerializable(includeIfNull: false)
class Container extends Object with _$ContainerSerializerMixin {
  final String name;
  final String image;
  String imagePullPolicy;

  Container({this.name, this.image, this.imagePullPolicy});

  factory Container.fromJson(Map<String, dynamic> json) => _$ContainerFromJson(json);
}

// https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#volume-v1-core
@JsonSerializable(includeIfNull:  false)
class Volume extends Object with _$VolumeSerializerMixin {
  // todo: We need to figure out a better strategy - there are a dozen volume types
  Map<String,Object> volumeMap;

  Volume({this.volumeMap});
  factory Volume.fromJson(Map<String, dynamic> json) => _$VolumeFromJson(json);
}


// https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#podspec-v1-core
@JsonSerializable(includeIfNull:  false)
class PodSpec  extends Object with _$PodSpecSerializerMixin {
  @JsonKey(nullable: false, required: true)
  List<Container> containers;
  List<Container> initContainers;
  final int terminationGracePeriodSeconds;
  final String serviceAccountName;
  final List<Volume> volumes;
  // affinity


  PodSpec({this.containers, this.initContainers, this.terminationGracePeriodSeconds,
    this.serviceAccountName, this.volumes});

  factory PodSpec.fromJson(Map<String, dynamic> json) => _$PodSpecFromJson(json);
}


@JsonSerializable(includeIfNull:  false)
class PodTemplateSpec  extends Object with _$PodTemplateSpecSerializerMixin {
  final ObjectMeta metadata;
  final PodSpec spec;

  PodTemplateSpec({this.metadata, this.spec});

  factory PodTemplateSpec.fromJson(Map<String, dynamic> json) => _$PodTemplateSpecFromJson(json);
}


// https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#deployment-v1-apps
@JsonSerializable(includeIfNull:  false)
class Deployment extends Object with _$DeploymentSerializerMixin {
  final String apiVersion = "apps/v1";
  final String kind = "Deployment";
  final ObjectMeta metadata;
  final DeploymentSpec spec;

  Deployment({this.metadata, this.spec});

  factory Deployment.fromJson(Map<String, dynamic> json) => _$DeploymentFromJson(json);
}

@JsonSerializable(includeIfNull:  false)
class DeploymentSpec extends Object with _$DeploymentSpecSerializerMixin {
  int minReadySeconds;
  int progressDeadlineSeconds;
  int replicas;
  int revisionHistoryLimit;
  final PodTemplateSpec template;
  final LabelSelector selector;


  DeploymentSpec({this.selector, this.template});
  factory DeploymentSpec.fromJson(Map<String, dynamic> json) => _$DeploymentSpecFromJson(json);
}