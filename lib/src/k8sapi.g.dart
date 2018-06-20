// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'k8sapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObjectMeta _$ObjectMetaFromJson(Map<String, dynamic> json) {
  return new ObjectMeta(
      name: json['name'] as String,
      annotations: (json['annotations'] as Map<String, dynamic>)
          ?.map((k, e) => new MapEntry(k, e as String)),
      labels: (json['labels'] as Map<String, dynamic>)
          ?.map((k, e) => new MapEntry(k, e as String)),
      namespace: json['namespace'] as String);
}

abstract class _$ObjectMetaSerializerMixin {
  Map<String, String> get annotations;
  Map<String, String> get labels;
  String get namespace;
  String get name;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotations', annotations);
    writeNotNull('labels', labels);
    writeNotNull('namespace', namespace);
    writeNotNull('name', name);
    return val;
  }
}

LabelSelectorRequirement _$LabelSelectorRequirementFromJson(
    Map<String, dynamic> json) {
  return new LabelSelectorRequirement(
      key: json['key'] as String,
      operator: json['operator'] as String,
      values: (json['values'] as List)?.map((e) => e as String)?.toList());
}

abstract class _$LabelSelectorRequirementSerializerMixin {
  String get key;
  String get operator;
  List<String> get values;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('key', key);
    writeNotNull('operator', operator);
    writeNotNull('values', values);
    return val;
  }
}

LabelSelector _$LabelSelectorFromJson(Map<String, dynamic> json) {
  return new LabelSelector(
      matchLabels: json['matchLabels'] as Map<String, dynamic>,
      matchExpressions: json['matchExpressions'] == null
          ? null
          : new LabelSelectorRequirement.fromJson(
              json['matchExpressions'] as Map<String, dynamic>));
}

abstract class _$LabelSelectorSerializerMixin {
  Map<String, Object> get matchLabels;
  LabelSelectorRequirement get matchExpressions;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('matchLabels', matchLabels);
    writeNotNull('matchExpressions', matchExpressions);
    return val;
  }
}

Container _$ContainerFromJson(Map<String, dynamic> json) {
  return new Container(
      name: json['name'] as String,
      image: json['image'] as String,
      imagePullPolicy: json['imagePullPolicy'] as String);
}

abstract class _$ContainerSerializerMixin {
  String get name;
  String get image;
  String get imagePullPolicy;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('name', name);
    writeNotNull('image', image);
    writeNotNull('imagePullPolicy', imagePullPolicy);
    return val;
  }
}

Volume _$VolumeFromJson(Map<String, dynamic> json) {
  return new Volume(volumeMap: json['volumeMap'] as Map<String, dynamic>);
}

abstract class _$VolumeSerializerMixin {
  Map<String, Object> get volumeMap;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('volumeMap', volumeMap);
    return val;
  }
}

PodSpec _$PodSpecFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['containers']);
  return new PodSpec(
      containers: (json['containers'] as List)
          .map((e) => new Container.fromJson(e as Map<String, dynamic>))
          .toList(),
      initContainers: (json['initContainers'] as List)
          ?.map((e) => e == null
              ? null
              : new Container.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      terminationGracePeriodSeconds:
          json['terminationGracePeriodSeconds'] as int,
      serviceAccountName: json['serviceAccountName'] as String,
      volumes: (json['volumes'] as List)
          ?.map((e) =>
              e == null ? null : new Volume.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

abstract class _$PodSpecSerializerMixin {
  List<Container> get containers;
  List<Container> get initContainers;
  int get terminationGracePeriodSeconds;
  String get serviceAccountName;
  List<Volume> get volumes;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{
      'containers': containers,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('initContainers', initContainers);
    writeNotNull(
        'terminationGracePeriodSeconds', terminationGracePeriodSeconds);
    writeNotNull('serviceAccountName', serviceAccountName);
    writeNotNull('volumes', volumes);
    return val;
  }
}

PodTemplateSpec _$PodTemplateSpecFromJson(Map<String, dynamic> json) {
  return new PodTemplateSpec(
      metadata: json['metadata'] == null
          ? null
          : new ObjectMeta.fromJson(json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : new PodSpec.fromJson(json['spec'] as Map<String, dynamic>));
}

abstract class _$PodTemplateSpecSerializerMixin {
  ObjectMeta get metadata;
  PodSpec get spec;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('metadata', metadata);
    writeNotNull('spec', spec);
    return val;
  }
}

Deployment _$DeploymentFromJson(Map<String, dynamic> json) {
  return new Deployment(
      metadata: json['metadata'] == null
          ? null
          : new ObjectMeta.fromJson(json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : new DeploymentSpec.fromJson(json['spec'] as Map<String, dynamic>));
}

abstract class _$DeploymentSerializerMixin {
  ObjectMeta get metadata;
  DeploymentSpec get spec;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('metadata', metadata);
    writeNotNull('spec', spec);
    return val;
  }
}

DeploymentSpec _$DeploymentSpecFromJson(Map<String, dynamic> json) {
  return new DeploymentSpec(
      selector: json['selector'] == null
          ? null
          : new LabelSelector.fromJson(
              json['selector'] as Map<String, dynamic>),
      template: json['template'] == null
          ? null
          : new PodTemplateSpec.fromJson(
              json['template'] as Map<String, dynamic>))
    ..minReadySeconds = json['minReadySeconds'] as int
    ..progressDeadlineSeconds = json['progressDeadlineSeconds'] as int
    ..replicas = json['replicas'] as int
    ..revisionHistoryLimit = json['revisionHistoryLimit'] as int;
}

abstract class _$DeploymentSpecSerializerMixin {
  int get minReadySeconds;
  int get progressDeadlineSeconds;
  int get replicas;
  int get revisionHistoryLimit;
  PodTemplateSpec get template;
  LabelSelector get selector;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('minReadySeconds', minReadySeconds);
    writeNotNull('progressDeadlineSeconds', progressDeadlineSeconds);
    writeNotNull('replicas', replicas);
    writeNotNull('revisionHistoryLimit', revisionHistoryLimit);
    writeNotNull('template', template);
    writeNotNull('selector', selector);
    return val;
  }
}
