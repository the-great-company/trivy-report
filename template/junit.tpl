<?xml version="1.0" ?>
<testsuites>
{{- range . -}}
{{- $failures := len .Vulnerabilities }}
    <testsuite tests="1" failures="{{ $failures }}" time="" name="{{  .Target }}-LOW">
    {{- if not (eq .Type "") }}
        <properties>
            <property name="type" value="{{ .Type }}"></property>
        </properties>
        {{- end -}}
        {{ range .Vulnerabilities }}
        {{- if (eq .Vulnerability.Severity "LOW") }}
        <testcase classname="{{ .PkgName }}-{{ .InstalledVersion }}" name="[{{ .Vulnerability.Severity }}] {{ .VulnerabilityID }}" time="">
            <failure message={{escapeXML .Title | printf "%q" }} type="description">{{escapeXML .Description | printf "%q" }}</failure>
        </testcase>
        {{- end}}
    {{- end }}
    </testsuite>
{{- end }}
{{- range . -}}
{{- $failures := len .Vulnerabilities }}
    <testsuite tests="2" failures="{{ $failures }}" time="" name="{{  .Target }}-MEDIUM">
    {{- if not (eq .Type "") }}
        <properties>
            <property name="type" value="{{ .Type }}"></property>
        </properties>
        {{- end -}}
        {{ range .Vulnerabilities }}
        {{- if (eq .Vulnerability.Severity "MEDIUM") }}
        <testcase classname="{{ .PkgName }}-{{ .InstalledVersion }}" name="[{{ .Vulnerability.Severity }}] {{ .VulnerabilityID }}" time="">
            <failure message={{escapeXML .Title | printf "%q" }} type="description">{{escapeXML .Description | printf "%q" }}</failure>
        </testcase>
        {{- end}}
    {{- end }}
    </testsuite>
{{- end }}
{{- range . -}}
{{- $failures := len .Vulnerabilities }}
    <testsuite tests="3" failures="{{ $failures }}" time="" name="{{  .Target }}-HIGH">
    {{- if not (eq .Type "") }}
        <properties>
            <property name="type" value="{{ .Type }}"></property>
        </properties>
        {{- end -}}
        {{ range .Vulnerabilities }}
        {{- if (eq .Vulnerability.Severity "HIGH") }}
        <testcase classname="{{ .PkgName }}-{{ .InstalledVersion }}" name="[{{ .Vulnerability.Severity }}] {{ .VulnerabilityID }}" time="">
            <failure message={{escapeXML .Title | printf "%q" }} type="description">{{escapeXML .Description | printf "%q" }}</failure>
        </testcase>
        {{- end}}
    {{- end }}
    </testsuite>
{{- end }}
{{- range . -}}
{{- $failures := len .Vulnerabilities }}
    <testsuite tests="4" failures="{{ $failures }}" time="" name="{{  .Target }}-CRITICAL">
    {{- if not (eq .Type "") }}
        <properties>
            <property name="type" value="{{ .Type }}"></property>
        </properties>
        {{- end -}}
        {{ range .Vulnerabilities }}
        {{- if (eq .Vulnerability.Severity "CRITICAL") }}
        <testcase classname="{{ .PkgName }}-{{ .InstalledVersion }}" name="[{{ .Vulnerability.Severity }}] {{ .VulnerabilityID }}" time="">
            <failure message={{escapeXML .Title | printf "%q" }} type="description">{{escapeXML .Description | printf "%q" }}</failure>
        </testcase>
        {{- end}}
    {{- end }}
    </testsuite>
{{- end }}
</testsuites>