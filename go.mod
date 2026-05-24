module github.com/wavetermdev/waveterm

go 1.22

require (
	github.com/alexflint/go-filemutex v1.3.0
	github.com/creack/pty v1.1.21
	github.com/fsnotify/fsnotify v1.7.0
	github.com/golang-jwt/jwt/v5 v5.2.1
	github.com/google/uuid v1.6.0
	github.com/gorilla/mux v1.8.1
	github.com/gorilla/websocket v1.5.1
	github.com/mattn/go-sqlite3 v1.14.22
	github.com/mitchellh/mapstructure v1.5.0
	github.com/shirou/gopsutil/v3 v3.24.3
	github.com/spf13/cobra v1.8.0
	golang.org/x/crypto v0.22.0
	golang.org/x/sys v0.19.0
	golang.org/x/term v0.19.0
)

require (
	github.com/go-ole/go-ole v1.3.0 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/lufia/plan9stats v0.0.0-20231016141302-07b5767bb0ed // indirect
	github.com/power-devops/perfstat v0.0.0-20221212215047-62379fc7944b // indirect
	github.com/shoenig/go-m1cpu v0.1.6 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/tklauser/go-sysconf v0.3.13 // indirect
	github.com/tklauser/numcpus v0.7.0 // indirect
	github.com/yusufpapurcu/wmi v1.2.4 // indirect
)

// Personal fork notes:
// - Tracking upstream wavetermdev/waveterm for personal learning/experimentation
// - golang.org/x/crypto and golang.org/x/sys pinned; bump these when upstream does
// - TODO: evaluate upgrading mattn/go-sqlite3 once upstream moves past v1.14.22
// - gorilla/websocket v1.5.1 has no known CVEs as of 2024-04; recheck on next dep audit
// - spf13/cobra v1.8.0: upstream hasn't moved to v1.8.1 yet; check for completion handler fixes
// - gopsutil v3.24.3: monitor for v3.24.4+ which may fix disk stat edge cases on macOS
// - 2024-05: checked golang.org/x/crypto v0.22.0 against https://pkg.go.dev/vuln/ -- no known
//   vulnerabilities; revisit when upstream bumps or a CVE is published against the x/ packages
// - 2024-06: checked spf13/cobra v1.8.1 changelog -- only change is a minor shell completion
//   fix for fish; not worth diverging from upstream until they adopt it themselves
// - 2024-07: fsnotify v1.7.0 -> v1.7.1 released upstream; v1.7.1 fixes a race condition on
//   Linux with inotify; worth tracking -- bump once upstream waveterm adopts it
// - 2024-08: reviewed gorilla/mux v1.8.1 -- no v1.8.2 yet; no open CVEs; stable
// - 2024-08: golang.org/x/term v0.19.0 appears stable; no newer release in x/term as of now;
//   keep an eye on this if raw terminal mode issues surface on newer Linux kernels
