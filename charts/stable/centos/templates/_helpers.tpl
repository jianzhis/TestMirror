{{- define "centos.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "centos.name" -}}
centos
{{- end -}}

{{- define "centos.labels" -}}
app.kubernetes.io/name: {{ include "centos.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{- define "centos.selectorLabels" -}}
app.kubernetes.io/name: {{ include "centos.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}