{{/* 
Generate the full name of the release, limiting to 63 characters 
*/}}
{{- define "centos.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* 
Generate the name of the chart 
*/}}
{{- define "centos.name" -}}
centos
{{- end -}}

{{/* 
Generate common labels 
*/}}
{{- define "centos.labels" -}}
app.kubernetes.io/name: {{ include "centos.name" . }}                   # 不使用 quote
app.kubernetes.io/instance: {{ .Release.Name }}                        # 不使用 quote
app.kubernetes.io/version: {{ .Chart.AppVersion }}                      # 不使用 quote
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}                   # 不使用 quote
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "centos.selectorLabels" -}}
app.kubernetes.io/name: {{ include "centos.name" . }}                   # 不使用 quote
app.kubernetes.io/instance: {{ .Release.Name }}                        # 不使用 quote
{{- end -}}
