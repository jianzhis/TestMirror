{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "filecodebox.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "filecodebox.name" -}}
filecodebox
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "filecodebox.labels" -}}
app.kubernetes.io/name: {{ include "filecodebox.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "filecodebox.selectorLabels" -}}
app.kubernetes.io/name: {{ include "filecodebox.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}