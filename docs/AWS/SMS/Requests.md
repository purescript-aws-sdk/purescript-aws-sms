## Module AWS.SMS.Requests

#### `createReplicationJob`

``` purescript
createReplicationJob :: forall eff. Service -> CreateReplicationJobRequest -> Aff (exception :: EXCEPTION | eff) CreateReplicationJobResponse
```

The CreateReplicationJob API is used to create a ReplicationJob to replicate a server on AWS. Call this API to first create a ReplicationJob, which will then schedule periodic ReplicationRuns to replicate your server to AWS. Each ReplicationRun will result in the creation of an AWS AMI.

#### `deleteReplicationJob`

``` purescript
deleteReplicationJob :: forall eff. Service -> DeleteReplicationJobRequest -> Aff (exception :: EXCEPTION | eff) DeleteReplicationJobResponse
```

The DeleteReplicationJob API is used to delete a ReplicationJob, resulting in no further ReplicationRuns. This will delete the contents of the S3 bucket used to store SMS artifacts, but will not delete any AMIs created by the SMS service.

#### `deleteServerCatalog`

``` purescript
deleteServerCatalog :: forall eff. Service -> DeleteServerCatalogRequest -> Aff (exception :: EXCEPTION | eff) DeleteServerCatalogResponse
```

The DeleteServerCatalog API clears all servers from your server catalog. This means that these servers will no longer be accessible to the Server Migration Service.

#### `disassociateConnector`

``` purescript
disassociateConnector :: forall eff. Service -> DisassociateConnectorRequest -> Aff (exception :: EXCEPTION | eff) DisassociateConnectorResponse
```

The DisassociateConnector API will disassociate a connector from the Server Migration Service, rendering it unavailable to support replication jobs.

#### `getConnectors`

``` purescript
getConnectors :: forall eff. Service -> GetConnectorsRequest -> Aff (exception :: EXCEPTION | eff) GetConnectorsResponse
```

The GetConnectors API returns a list of connectors that are registered with the Server Migration Service.

#### `getReplicationJobs`

``` purescript
getReplicationJobs :: forall eff. Service -> GetReplicationJobsRequest -> Aff (exception :: EXCEPTION | eff) GetReplicationJobsResponse
```

The GetReplicationJobs API will return all of your ReplicationJobs and their details. This API returns a paginated list, that may be consecutively called with nextToken to retrieve all ReplicationJobs.

#### `getReplicationRuns`

``` purescript
getReplicationRuns :: forall eff. Service -> GetReplicationRunsRequest -> Aff (exception :: EXCEPTION | eff) GetReplicationRunsResponse
```

The GetReplicationRuns API will return all ReplicationRuns for a given ReplicationJob. This API returns a paginated list, that may be consecutively called with nextToken to retrieve all ReplicationRuns for a ReplicationJob.

#### `getServers`

``` purescript
getServers :: forall eff. Service -> GetServersRequest -> Aff (exception :: EXCEPTION | eff) GetServersResponse
```

The GetServers API returns a list of all servers in your server catalog. For this call to succeed, you must previously have called ImportServerCatalog.

#### `importServerCatalog`

``` purescript
importServerCatalog :: forall eff. Service -> ImportServerCatalogRequest -> Aff (exception :: EXCEPTION | eff) ImportServerCatalogResponse
```

The ImportServerCatalog API is used to gather the complete list of on-premises servers on your premises. This API call requires connectors to be installed and monitoring all servers you would like imported. This API call returns immediately, but may take some time to retrieve all of the servers.

#### `startOnDemandReplicationRun`

``` purescript
startOnDemandReplicationRun :: forall eff. Service -> StartOnDemandReplicationRunRequest -> Aff (exception :: EXCEPTION | eff) StartOnDemandReplicationRunResponse
```

The StartOnDemandReplicationRun API is used to start a ReplicationRun on demand (in addition to those that are scheduled based on your frequency). This ReplicationRun will start immediately. StartOnDemandReplicationRun is subject to limits on how many on demand ReplicationRuns you may call per 24-hour period.

#### `updateReplicationJob`

``` purescript
updateReplicationJob :: forall eff. Service -> UpdateReplicationJobRequest -> Aff (exception :: EXCEPTION | eff) UpdateReplicationJobResponse
```

The UpdateReplicationJob API is used to change the settings of your existing ReplicationJob created using CreateReplicationJob. Calling this API will affect the next scheduled ReplicationRun.


