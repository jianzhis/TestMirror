{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "openresty.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "openresty.name" -}}
openresty
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "openresty.labels" -}}
app.kubernetes.io/name: {{ include "openresty.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "openresty.selectorLabels" -}}
app.kubernetes.io/name: {{ include "openresty.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}