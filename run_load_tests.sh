#!/bin/bash

network="api_trabalho_graduacao_api-tg"

test_scenarios_list=(
    cached_scenario
    no_cache_scenario
    ttl_cached_scenario
)

for file in "${test_scenarios_list[@]}"; do
    echo "Processing test file ${file}"
    TEST_SCENARIO="${file}" NETWORK="${network}" docker-compose up
done