{{/*
Return the fully qualified name of the application.
*/}}
{{- define "jenkins.fullname" -}}
{{- printf "%s-%s" .Release.Name "jenkins" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the name of the application.
*/}}
{{- define "jenkins.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the common labels for the application.
*/}}
{{- define "jenkins.labels" -}}
app.kubernetes.io/name: {{ include "jenkins.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/component: jenkins
{{- end -}}

{{/*
Return the selector labels for the application.
*/}}
{{- define "jenkins.selectorLabels" -}}
app.kubernetes.io/name: {{ include "jenkins.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: jenkins
{{- end -}}