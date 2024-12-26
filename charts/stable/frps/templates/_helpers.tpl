{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "frps.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "frps.name" -}}
frps
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "frps.labels" -}}
app.kubernetes.io/name: {{ include "frps.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "frps.selectorLabels" -}}
app.kubernetes.io/name: {{ include "frps.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}