{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "dst-server.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "dst-server.name" -}}
dst-server
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "dst-server.labels" -}}
app.kubernetes.io/name: {{ include "dst-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "dst-server.selectorLabels" -}}
app.kubernetes.io/name: {{ include "dst-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}