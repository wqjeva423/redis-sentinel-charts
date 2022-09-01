{{/* Build the Spotahome standard labels */}}
{{- define "common-labels" -}}
app.kubernetes.io/name: {{ .Chart.Name | quote }}
{{- end }}

{{- define "helm-labels" -}}
{{ include "common-labels" . }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | quote }}
app.kubernetes.io/instance: redis-sentinel-operator
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
release: "{{ .Release.Name }}"
{{- end }}

{{/* Build wide-used variables the application */}}
{{ define "name" -}}
redis-sentinel-operator
{{- end }}

{{ define "image" -}}
{{ printf "%s:%s" .Values.image .Values.tag }}
{{- end }}
