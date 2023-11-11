$network = "tg_api_api-tg"

$testScenariosList = @(
    #"cached_scenario",
    #"no_cache_scenario",
    "ttl_cached_scenario"
)

foreach ($file in $testScenariosList) {
    Write-Host "Processing test file $file"
    $env:TEST_SCENARIO = $file
    $env:NETWORK = $network
    docker-compose up
    Start-Sleep -Seconds 180
}