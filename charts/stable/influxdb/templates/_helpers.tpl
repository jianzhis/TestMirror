{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "influxdb.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "influxdb.name" -}}
influxdb
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "influxdb.labels" -}}
app.kubernetes.io/name: {{ include "influxdb.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "influxdb.selectorLabels" -}}
app.kubernetes.io/name: {{ include "influxdb.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}