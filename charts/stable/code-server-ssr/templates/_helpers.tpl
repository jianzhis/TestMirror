{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "vscode-ssr.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "vscode-ssr.name" -}}
vscode-ssr
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "vscode-ssr.labels" -}}
app.kubernetes.io/name: {{ include "vscode-ssr.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "vscode-ssr.selectorLabels" -}}
app.kubernetes.io/name: {{ include "vscode-ssr.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}