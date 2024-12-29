{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "left4dead2-server.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "left4dead2-server.name" -}}
left4dead2-server
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "left4dead2-server.labels" -}}
app.kubernetes.io/name: {{ include "left4dead2-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "left4dead2-server.selectorLabels" -}}
app.kubernetes.io/name: {{ include "left4dead2-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}