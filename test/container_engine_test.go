package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestContainerEngine(t *testing.T) {
	t.Parallel()

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../",
		VarFiles: []string{
			"variables.tfvars",
		},
		NoColor: false,
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	actualClusterName := terraform.Output(t, terraformOptions, "container_engine_name")

	assert.Equal(t, "example-cluster", actualClusterName)
}
