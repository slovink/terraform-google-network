// Jenkinsfile - put this at the root of every terraform-google-* module repo.
// All pipeline logic lives in the shared library: github.com/slovink/jenkins-shared-library (tag v1).
@Library('slovink-terratest@v1') _

terratestPipeline(
    // GCP project where integration tests create (and destroy) real resources
    testProject             : 'pinnacles-data-center',

    // GCP credentials added in Jenkins (Manage Jenkins -> Credentials, kind "Secret file").
    // The IDs here must match the credential IDs exactly.
    unitCredentialsId       : 'gcp-terratest-readonly',   // unit stage: terraform plan only (roles/viewer)
    integrationCredentialsId: 'gcp-terratest-int',        // integration stage: real apply + destroy

    // Integration test limits
    integrationTimeoutMin   : 90,                         // minutes; GKE needs ~25, network ~5
    lockLabel               : 'gcp-terratest-slot',       // max 3 integration runs at once (gcp-slot-1..3)

    // Where builds run: the "terratest" pod template in the Jenkins Helm values
    // (image docker.io/slovink/terratest-agent:1.0)
    podTemplate             : 'terratest',

    // Failure alerts for main and nightly builds
    slackChannel            : '#infra-ci',

    // Job triggered after a successful release-tag build
    e2eJob                  : 'slovink/terraform-google-e2e/main',
)
