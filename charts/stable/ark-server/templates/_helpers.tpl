{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "ark-server.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "ark-server.name" -}}
ark-server
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "ark-server.labels" -}}
app.kubernetes.io/name: {{ include "ark-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "ark-server.selectorLabels" -}}
app.kubernetes.io/name: {{ include "ark-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}