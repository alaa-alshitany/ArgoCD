{{/* Helper function to generate the full name */}}
{{- define "jenkins.fullname" -}}
{{- if .Values.fullnameOverride }}
{{ .Values.fullnameOverride | quote }}
{{- else }}
{{ template "jenkins.name" . }}
{{- end }}
{{- end }}
