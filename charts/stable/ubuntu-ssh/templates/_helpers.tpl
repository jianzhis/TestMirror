apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ include "ubuntu-ssh.fullname" . }}
  labels:
    {{- include "ubuntu-ssh.labels" . | nindent 4 }}
spec:
  replicas: {{ .Values.replicaCount }}
  selector:
    matchLabels:
      {{- include "ubuntu-ssh.selectorLabels" . | nindent 6 }}
  template:
    metadata:
      labels:
        {{- include "ubuntu-ssh.selectorLabels" . | nindent 8 }}
    spec:
      containers:
        - name: ubuntu-ssh
          image: "{{ .Values.image.imageRegistry }}/{{ .Values.image.repository }}:{{ .Values.image.tag }}"
          ports:
            - containerPort: 22
          env:
            - name: {{ .Values.env.env1.name }}
              value: {{ .Values.env.env1.value }}
            - name: {{ .Values.env.env2.name }}
              value: {{ .Values.env.env2.value }}
          resources:
            {{- toYaml .Values.resources | nindent 12 }}
          volumeMounts:
            - name: data
              mountPath: /data
      volumes:
        - name: data
          persistentVolumeClaim:
            claimName: {{ include "ubuntu-ssh.fullname" . }}-pvc
