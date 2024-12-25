{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "centos.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "centos.name" -}}
centos
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "centos.labels" -}}
app.kubernetes.io/name: {{ include "centos.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "centos.selectorLabels" -}}
app.kubernetes.io/name: {{ include "centos.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}