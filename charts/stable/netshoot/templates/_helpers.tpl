{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "netshoot.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "netshoot.name" -}}
netshoot
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "netshoot.labels" -}}
app.kubernetes.io/name: {{ include "netshoot.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "netshoot.selectorLabels" -}}
app.kubernetes.io/name: {{ include "netshoot.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}