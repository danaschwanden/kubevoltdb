{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "kubevoltdb.name" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" $name .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "kubevoltdb.app" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-app" $name .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
