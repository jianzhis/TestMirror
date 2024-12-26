{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "netmaker.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "netmaker.name" -}}
netmaker
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "netmaker.labels" -}}
app.kubernetes.io/name: {{ include "netmaker.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "netmaker.selectorLabels" -}}
app.kubernetes.io/name: {{ include "netmaker.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}