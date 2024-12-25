{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "rustdesk.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "rustdesk.name" -}}
rustdesk
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "rustdesk.labels" -}}
app.kubernetes.io/name: {{ include "rustdesk.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "rustdesk.selectorLabels" -}}
app.kubernetes.io/name: {{ include "rustdesk.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}