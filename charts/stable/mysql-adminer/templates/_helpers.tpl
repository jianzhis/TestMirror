{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "mysql-adminer.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "mysql-adminer.name" -}}
mysql-adminer
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "mysql-adminer.labels" -}}
app.kubernetes.io/name: {{ include "mysql-adminer.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "mysql-adminer.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mysql-adminer.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}