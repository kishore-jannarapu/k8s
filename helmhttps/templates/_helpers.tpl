{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of chart
*/}}
{{- define "mysma.name" -}}
{{- default .Chart.Name .Values.nameOverride |trunc 52 |trimSuffix "-" -}}
{{- end -}}
{{/*
create a fq app name
*/}}
{{- define "mysma.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 |trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name |trunc 52 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 |trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}
