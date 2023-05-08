workspace(
    name = "com_github_XXXXXX",
    managed_directories = {"@npm": ["node_modules"]},
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

##---------------------------------------------------------------------------
## ctlptl (K8s cluster configuration tool) Repository

CTLPTL_TAG = "0.7.8"

CTLPTL_SHA = "5d0f0b9446854f2616d475b62d2d134d0db42e760e7f4afa3bac3666070ddac5"

http_archive(
    name = "com_github_tilt-dev_ctlptl",
    build_file_content = """exports_files(["ctlptl"])""",
    sha256 = CTLPTL_SHA,
    urls = [
        "https://github.com/tilt-dev/ctlptl/releases/download/v{0}/ctlptl.{0}.linux.x86_64.tar.gz".format(CTLPTL_TAG),
    ],
)

##---------------------------------------------------------------------------
## Tilt (K8s developer environment) Repository

TILT_TAG = "0.30.3"

TILT_SHA = "afc5931093e79eb8b927e4c46a4c9d095fd6499148507d49e2117c0477f96f6e"

http_archive(
    name = "com_github_tilt-dev_tilt",
    build_file_content = """exports_files(["tilt"])""",
    sha256 = TILT_SHA,
    urls = [
        "https://github.com/tilt-dev/tilt/releases/download/v{0}/tilt.{0}.linux.x86_64.tar.gz".format(TILT_TAG),
    ],
)

##---------------------------------------------------------------------------
## kubectl (k8s CLI tool) Repository

KUBECTL_TAG = "1.22.3"

KUBECTL_SHA = "0751808ca8d7daba56bf76b08848ef5df6b887e9d7e8a9030dd3711080e37b54"

http_file(
    name = "io_k8s_kubectl",
    downloaded_file_path = "kubectl",
    executable = True,
    sha256 = KUBECTL_SHA,
    urls = [
        "https://dl.k8s.io/release/v{0}/bin/linux/amd64/kubectl".format(KUBECTL_TAG),
    ],
)

##---------------------------------------------------------------------------
## Kustomize (k8s template generation) Repository

KUSTOMIZE_TAG = "4.4.1"

KUSTOMIZE_SHA = "2d5927efec40ba32a121c49f6df9955b8b8a296ef1dec4515a46fc84df158798"

http_archive(
    name = "com_github_kubernetes-sigs_kustomize",
    build_file_content = """exports_files(["kustomize"])""",
    sha256 = KUSTOMIZE_SHA,
    urls = [
        "https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv{0}/kustomize_v{0}_linux_amd64.tar.gz".format(KUSTOMIZE_TAG),
    ],
)

##---------------------------------------------------------------------------
## KIND (k8s local cluster) Repository

KIND_TAG = "0.12.0"

KIND_SHA = "b80624c14c807490c0944d21fdc9c3455d6cc904fad486fe236f2187ecaa5789"

http_file(
    name = "io_k8s_sigs_kind",
    downloaded_file_path = "kind",
    executable = True,
    sha256 = KIND_SHA,
    urls = [
        "https://kind.sigs.k8s.io/dl/v{0}/kind-linux-amd64".format(KIND_TAG),
    ],
)

##---------------------------------------------------------------------------
## k9s (interactive k8s viewer) Repository

K9S_TAG = "0.25.4"

K9S_SHA = "4d048883cbfeb3c8ba6bdee8a2185e3d6841c2dece5f240d200548d2083aefc6"

http_archive(
    name = "com_github_derailed_k9s",
    build_file_content = """exports_files(["k9s"])""",
    sha256 = K9S_SHA,
    urls = [
        "https://github.com/derailed/k9s/releases/download/v{0}/k9s_Linux_x86_64.tar.gz".format(K9S_TAG),
    ],
)

##---------------------------------------------------------------------------
## Google Cloud SDK Repository

GCLOUD_TAG = "367.0.0"

GCLOUD_SHA = "94328b9c6559a1b7ec2eeaab9ef0e4702215e16e8327c5b99718750526ae1efe"

http_archive(
    name = "com_google_gcloud",
    build_file_content = """exports_files(["bin/bq", "bin/gcloud", "bin/gsutil"])""",
    sha256 = GCLOUD_SHA,
    strip_prefix = "google-cloud-sdk",
    urls = [
        "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-{0}-linux-x86_64.tar.gz".format(GCLOUD_TAG),
    ],
)

##---------------------------------------------------------------------------
## gRPCURL Repository

GRPCURL_TAG = "1.8.5"

GRPCURL_SHA = "20d1cca65dec077189472eb0f89290661e35d16892cfc9619e9e1fc6bb53dcac"

http_archive(
    name = "com_github_fullstorydev_grpcurl",
    build_file_content = """exports_files(["grpcurl"])""",
    sha256 = GRPCURL_SHA,
    urls = [
        "https://github.com/fullstorydev/grpcurl/releases/download/v{0}/grpcurl_{0}_linux_x86_64.tar.gz".format(GRPCURL_TAG),
    ],
)

##---------------------------------------------------------------------------
## Helm Repository

HELM_TAG = "3.8.0"

HELM_SHA = "8408c91e846c5b9ba15eb6b1a5a79fc22dd4d33ac6ea63388e5698d1b2320c8b"

http_archive(
    name = "com_github_helm_helm",
    build_file_content = """exports_files(["helm"])""",
    sha256 = HELM_SHA,
    strip_prefix = "linux-amd64",
    urls = [
        "https://get.helm.sh/helm-v{}-linux-amd64.tar.gz".format(HELM_TAG),
    ],
)
