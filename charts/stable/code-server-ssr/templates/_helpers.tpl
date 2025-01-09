{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "code-server-ssr.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "code-server-ssr.name" -}}
code-server-ssr
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "code-server-ssr.labels" -}}
app.kubernetes.io/name: {{ include "code-server-ssr.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "code-server-ssr.selectorLabels" -}}
app.kubernetes.io/name: {{ include "code-server-ssr.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}