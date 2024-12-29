{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "cataclysm-server.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "cataclysm-server.name" -}}
cataclysm-server
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "cataclysm-server.labels" -}}
app.kubernetes.io/name: {{ include "cataclysm-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "cataclysm-server.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cataclysm-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}