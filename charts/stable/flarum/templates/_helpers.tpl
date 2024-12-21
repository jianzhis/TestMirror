{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "flarum.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "flarum.name" -}}
flarum
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "flarum.labels" -}}
app.kubernetes.io/name: {{ include "flarum.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "flarum.selectorLabels" -}}
app.kubernetes.io/name: {{ include "flarum.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}