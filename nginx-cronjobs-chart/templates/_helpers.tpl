{{- define "nginx-cronjobs-chart.image" -}}
nginx:latest
{{- end -}}

{{- define "nginx-cronjobs-chart.cronjob" -}}
apiVersion: batch/v1beta1
kind: CronJob
metadata:
  name: {{ .Release.Name }}-cronjob-{{ .Values.index }}
spec:
  schedule: "*/5 * * * *"  # Adjust the schedule as needed
  jobTemplate:
    spec:
      template:
        spec:
          containers:
          - name: nginx
            image: {{ include "nginx-cronjobs-chart.image" . }}
            ports:
            - containerPort: 80
          restartPolicy: OnFailure
{{- end -}}