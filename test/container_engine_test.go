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
		Vars: map[string]interface{}{
			"region":                                    "uk-london-1",
			"vcn_display_name":                          "example-vcn",
			"cluster_name":                              "example-cluster",
			"node_pool_instance_number":                 "1",
			"node_pool_node_shape_config_ocpus":         "1",
			"node_pool_node_shape_config_memory_in_gbs": "4",
		},
		// VarFiles: []string{
		// 	"variables.tfvars",
		// },
		NoColor: false,
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	actualClusterName := terraform.Output(t, terraformOptions, "container_engine_name")

	assert.Equal(t, "example-cluster", actualClusterName)
}
