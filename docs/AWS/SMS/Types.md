## Module AWS.SMS.Types

#### `options`

``` purescript
options :: Options
```

#### `AmiId`

``` purescript
newtype AmiId
  = AmiId String
```

The AMI id for the image resulting from a Replication Run.

##### Instances
``` purescript
Newtype AmiId _
Generic AmiId _
Show AmiId
Decode AmiId
Encode AmiId
```

#### `Connector`

``` purescript
newtype Connector
  = Connector { connectorId :: NullOrUndefined (ConnectorId), version :: NullOrUndefined (ConnectorVersion), status :: NullOrUndefined (ConnectorStatus), capabilityList :: NullOrUndefined (ConnectorCapabilityList), vmManagerName :: NullOrUndefined (VmManagerName), vmManagerType :: NullOrUndefined (VmManagerType), vmManagerId :: NullOrUndefined (VmManagerId), ipAddress :: NullOrUndefined (IpAddress), macAddress :: NullOrUndefined (MacAddress), associatedOn :: NullOrUndefined (Timestamp) }
```

Object representing a Connector

##### Instances
``` purescript
Newtype Connector _
Generic Connector _
Show Connector
Decode Connector
Encode Connector
```

#### `newConnector`

``` purescript
newConnector :: Connector
```

Constructs Connector from required parameters

#### `newConnector'`

``` purescript
newConnector' :: ({ connectorId :: NullOrUndefined (ConnectorId), version :: NullOrUndefined (ConnectorVersion), status :: NullOrUndefined (ConnectorStatus), capabilityList :: NullOrUndefined (ConnectorCapabilityList), vmManagerName :: NullOrUndefined (VmManagerName), vmManagerType :: NullOrUndefined (VmManagerType), vmManagerId :: NullOrUndefined (VmManagerId), ipAddress :: NullOrUndefined (IpAddress), macAddress :: NullOrUndefined (MacAddress), associatedOn :: NullOrUndefined (Timestamp) } -> { connectorId :: NullOrUndefined (ConnectorId), version :: NullOrUndefined (ConnectorVersion), status :: NullOrUndefined (ConnectorStatus), capabilityList :: NullOrUndefined (ConnectorCapabilityList), vmManagerName :: NullOrUndefined (VmManagerName), vmManagerType :: NullOrUndefined (VmManagerType), vmManagerId :: NullOrUndefined (VmManagerId), ipAddress :: NullOrUndefined (IpAddress), macAddress :: NullOrUndefined (MacAddress), associatedOn :: NullOrUndefined (Timestamp) }) -> Connector
```

Constructs Connector's fields from required parameters

#### `ConnectorCapability`

``` purescript
newtype ConnectorCapability
  = ConnectorCapability String
```

Capabilities for a Connector

##### Instances
``` purescript
Newtype ConnectorCapability _
Generic ConnectorCapability _
Show ConnectorCapability
Decode ConnectorCapability
Encode ConnectorCapability
```

#### `ConnectorCapabilityList`

``` purescript
newtype ConnectorCapabilityList
  = ConnectorCapabilityList (Array ConnectorCapability)
```

List of Connector Capabilities

##### Instances
``` purescript
Newtype ConnectorCapabilityList _
Generic ConnectorCapabilityList _
Show ConnectorCapabilityList
Decode ConnectorCapabilityList
Encode ConnectorCapabilityList
```

#### `ConnectorId`

``` purescript
newtype ConnectorId
  = ConnectorId String
```

Unique Identifier for Connector

##### Instances
``` purescript
Newtype ConnectorId _
Generic ConnectorId _
Show ConnectorId
Decode ConnectorId
Encode ConnectorId
```

#### `ConnectorList`

``` purescript
newtype ConnectorList
  = ConnectorList (Array Connector)
```

List of connectors

##### Instances
``` purescript
Newtype ConnectorList _
Generic ConnectorList _
Show ConnectorList
Decode ConnectorList
Encode ConnectorList
```

#### `ConnectorStatus`

``` purescript
newtype ConnectorStatus
  = ConnectorStatus String
```

Status of on-premise Connector

##### Instances
``` purescript
Newtype ConnectorStatus _
Generic ConnectorStatus _
Show ConnectorStatus
Decode ConnectorStatus
Encode ConnectorStatus
```

#### `ConnectorVersion`

``` purescript
newtype ConnectorVersion
  = ConnectorVersion String
```

Connector version string

##### Instances
``` purescript
Newtype ConnectorVersion _
Generic ConnectorVersion _
Show ConnectorVersion
Decode ConnectorVersion
Encode ConnectorVersion
```

#### `CreateReplicationJobRequest`

``` purescript
newtype CreateReplicationJobRequest
  = CreateReplicationJobRequest { serverId :: ServerId, seedReplicationTime :: Timestamp, frequency :: Frequency, licenseType :: NullOrUndefined (LicenseType), roleName :: NullOrUndefined (RoleName), description :: NullOrUndefined (Description) }
```

##### Instances
``` purescript
Newtype CreateReplicationJobRequest _
Generic CreateReplicationJobRequest _
Show CreateReplicationJobRequest
Decode CreateReplicationJobRequest
Encode CreateReplicationJobRequest
```

#### `newCreateReplicationJobRequest`

``` purescript
newCreateReplicationJobRequest :: Frequency -> Timestamp -> ServerId -> CreateReplicationJobRequest
```

Constructs CreateReplicationJobRequest from required parameters

#### `newCreateReplicationJobRequest'`

``` purescript
newCreateReplicationJobRequest' :: Frequency -> Timestamp -> ServerId -> ({ serverId :: ServerId, seedReplicationTime :: Timestamp, frequency :: Frequency, licenseType :: NullOrUndefined (LicenseType), roleName :: NullOrUndefined (RoleName), description :: NullOrUndefined (Description) } -> { serverId :: ServerId, seedReplicationTime :: Timestamp, frequency :: Frequency, licenseType :: NullOrUndefined (LicenseType), roleName :: NullOrUndefined (RoleName), description :: NullOrUndefined (Description) }) -> CreateReplicationJobRequest
```

Constructs CreateReplicationJobRequest's fields from required parameters

#### `CreateReplicationJobResponse`

``` purescript
newtype CreateReplicationJobResponse
  = CreateReplicationJobResponse { replicationJobId :: NullOrUndefined (ReplicationJobId) }
```

##### Instances
``` purescript
Newtype CreateReplicationJobResponse _
Generic CreateReplicationJobResponse _
Show CreateReplicationJobResponse
Decode CreateReplicationJobResponse
Encode CreateReplicationJobResponse
```

#### `newCreateReplicationJobResponse`

``` purescript
newCreateReplicationJobResponse :: CreateReplicationJobResponse
```

Constructs CreateReplicationJobResponse from required parameters

#### `newCreateReplicationJobResponse'`

``` purescript
newCreateReplicationJobResponse' :: ({ replicationJobId :: NullOrUndefined (ReplicationJobId) } -> { replicationJobId :: NullOrUndefined (ReplicationJobId) }) -> CreateReplicationJobResponse
```

Constructs CreateReplicationJobResponse's fields from required parameters

#### `DeleteReplicationJobRequest`

``` purescript
newtype DeleteReplicationJobRequest
  = DeleteReplicationJobRequest { replicationJobId :: ReplicationJobId }
```

##### Instances
``` purescript
Newtype DeleteReplicationJobRequest _
Generic DeleteReplicationJobRequest _
Show DeleteReplicationJobRequest
Decode DeleteReplicationJobRequest
Encode DeleteReplicationJobRequest
```

#### `newDeleteReplicationJobRequest`

``` purescript
newDeleteReplicationJobRequest :: ReplicationJobId -> DeleteReplicationJobRequest
```

Constructs DeleteReplicationJobRequest from required parameters

#### `newDeleteReplicationJobRequest'`

``` purescript
newDeleteReplicationJobRequest' :: ReplicationJobId -> ({ replicationJobId :: ReplicationJobId } -> { replicationJobId :: ReplicationJobId }) -> DeleteReplicationJobRequest
```

Constructs DeleteReplicationJobRequest's fields from required parameters

#### `DeleteReplicationJobResponse`

``` purescript
newtype DeleteReplicationJobResponse
  = DeleteReplicationJobResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteReplicationJobResponse _
Generic DeleteReplicationJobResponse _
Show DeleteReplicationJobResponse
Decode DeleteReplicationJobResponse
Encode DeleteReplicationJobResponse
```

#### `DeleteServerCatalogRequest`

``` purescript
newtype DeleteServerCatalogRequest
  = DeleteServerCatalogRequest NoArguments
```

##### Instances
``` purescript
Newtype DeleteServerCatalogRequest _
Generic DeleteServerCatalogRequest _
Show DeleteServerCatalogRequest
Decode DeleteServerCatalogRequest
Encode DeleteServerCatalogRequest
```

#### `DeleteServerCatalogResponse`

``` purescript
newtype DeleteServerCatalogResponse
  = DeleteServerCatalogResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteServerCatalogResponse _
Generic DeleteServerCatalogResponse _
Show DeleteServerCatalogResponse
Decode DeleteServerCatalogResponse
Encode DeleteServerCatalogResponse
```

#### `Description`

``` purescript
newtype Description
  = Description String
```

The description for a Replication Job/Run.

##### Instances
``` purescript
Newtype Description _
Generic Description _
Show Description
Decode Description
Encode Description
```

#### `DisassociateConnectorRequest`

``` purescript
newtype DisassociateConnectorRequest
  = DisassociateConnectorRequest { connectorId :: ConnectorId }
```

##### Instances
``` purescript
Newtype DisassociateConnectorRequest _
Generic DisassociateConnectorRequest _
Show DisassociateConnectorRequest
Decode DisassociateConnectorRequest
Encode DisassociateConnectorRequest
```

#### `newDisassociateConnectorRequest`

``` purescript
newDisassociateConnectorRequest :: ConnectorId -> DisassociateConnectorRequest
```

Constructs DisassociateConnectorRequest from required parameters

#### `newDisassociateConnectorRequest'`

``` purescript
newDisassociateConnectorRequest' :: ConnectorId -> ({ connectorId :: ConnectorId } -> { connectorId :: ConnectorId }) -> DisassociateConnectorRequest
```

Constructs DisassociateConnectorRequest's fields from required parameters

#### `DisassociateConnectorResponse`

``` purescript
newtype DisassociateConnectorResponse
  = DisassociateConnectorResponse NoArguments
```

##### Instances
``` purescript
Newtype DisassociateConnectorResponse _
Generic DisassociateConnectorResponse _
Show DisassociateConnectorResponse
Decode DisassociateConnectorResponse
Encode DisassociateConnectorResponse
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

Error Message string

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `Frequency`

``` purescript
newtype Frequency
  = Frequency Int
```

Interval between Replication Runs. This value is specified in hours, and represents the time between consecutive Replication Runs.

##### Instances
``` purescript
Newtype Frequency _
Generic Frequency _
Show Frequency
Decode Frequency
Encode Frequency
```

#### `GetConnectorsRequest`

``` purescript
newtype GetConnectorsRequest
  = GetConnectorsRequest { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) }
```

##### Instances
``` purescript
Newtype GetConnectorsRequest _
Generic GetConnectorsRequest _
Show GetConnectorsRequest
Decode GetConnectorsRequest
Encode GetConnectorsRequest
```

#### `newGetConnectorsRequest`

``` purescript
newGetConnectorsRequest :: GetConnectorsRequest
```

Constructs GetConnectorsRequest from required parameters

#### `newGetConnectorsRequest'`

``` purescript
newGetConnectorsRequest' :: ({ nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) } -> { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) }) -> GetConnectorsRequest
```

Constructs GetConnectorsRequest's fields from required parameters

#### `GetConnectorsResponse`

``` purescript
newtype GetConnectorsResponse
  = GetConnectorsResponse { connectorList :: NullOrUndefined (ConnectorList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype GetConnectorsResponse _
Generic GetConnectorsResponse _
Show GetConnectorsResponse
Decode GetConnectorsResponse
Encode GetConnectorsResponse
```

#### `newGetConnectorsResponse`

``` purescript
newGetConnectorsResponse :: GetConnectorsResponse
```

Constructs GetConnectorsResponse from required parameters

#### `newGetConnectorsResponse'`

``` purescript
newGetConnectorsResponse' :: ({ connectorList :: NullOrUndefined (ConnectorList), nextToken :: NullOrUndefined (NextToken) } -> { connectorList :: NullOrUndefined (ConnectorList), nextToken :: NullOrUndefined (NextToken) }) -> GetConnectorsResponse
```

Constructs GetConnectorsResponse's fields from required parameters

#### `GetReplicationJobsRequest`

``` purescript
newtype GetReplicationJobsRequest
  = GetReplicationJobsRequest { replicationJobId :: NullOrUndefined (ReplicationJobId), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) }
```

##### Instances
``` purescript
Newtype GetReplicationJobsRequest _
Generic GetReplicationJobsRequest _
Show GetReplicationJobsRequest
Decode GetReplicationJobsRequest
Encode GetReplicationJobsRequest
```

#### `newGetReplicationJobsRequest`

``` purescript
newGetReplicationJobsRequest :: GetReplicationJobsRequest
```

Constructs GetReplicationJobsRequest from required parameters

#### `newGetReplicationJobsRequest'`

``` purescript
newGetReplicationJobsRequest' :: ({ replicationJobId :: NullOrUndefined (ReplicationJobId), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) } -> { replicationJobId :: NullOrUndefined (ReplicationJobId), nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) }) -> GetReplicationJobsRequest
```

Constructs GetReplicationJobsRequest's fields from required parameters

#### `GetReplicationJobsResponse`

``` purescript
newtype GetReplicationJobsResponse
  = GetReplicationJobsResponse { replicationJobList :: NullOrUndefined (ReplicationJobList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype GetReplicationJobsResponse _
Generic GetReplicationJobsResponse _
Show GetReplicationJobsResponse
Decode GetReplicationJobsResponse
Encode GetReplicationJobsResponse
```

#### `newGetReplicationJobsResponse`

``` purescript
newGetReplicationJobsResponse :: GetReplicationJobsResponse
```

Constructs GetReplicationJobsResponse from required parameters

#### `newGetReplicationJobsResponse'`

``` purescript
newGetReplicationJobsResponse' :: ({ replicationJobList :: NullOrUndefined (ReplicationJobList), nextToken :: NullOrUndefined (NextToken) } -> { replicationJobList :: NullOrUndefined (ReplicationJobList), nextToken :: NullOrUndefined (NextToken) }) -> GetReplicationJobsResponse
```

Constructs GetReplicationJobsResponse's fields from required parameters

#### `GetReplicationRunsRequest`

``` purescript
newtype GetReplicationRunsRequest
  = GetReplicationRunsRequest { replicationJobId :: ReplicationJobId, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) }
```

##### Instances
``` purescript
Newtype GetReplicationRunsRequest _
Generic GetReplicationRunsRequest _
Show GetReplicationRunsRequest
Decode GetReplicationRunsRequest
Encode GetReplicationRunsRequest
```

#### `newGetReplicationRunsRequest`

``` purescript
newGetReplicationRunsRequest :: ReplicationJobId -> GetReplicationRunsRequest
```

Constructs GetReplicationRunsRequest from required parameters

#### `newGetReplicationRunsRequest'`

``` purescript
newGetReplicationRunsRequest' :: ReplicationJobId -> ({ replicationJobId :: ReplicationJobId, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) } -> { replicationJobId :: ReplicationJobId, nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) }) -> GetReplicationRunsRequest
```

Constructs GetReplicationRunsRequest's fields from required parameters

#### `GetReplicationRunsResponse`

``` purescript
newtype GetReplicationRunsResponse
  = GetReplicationRunsResponse { replicationJob :: NullOrUndefined (ReplicationJob), replicationRunList :: NullOrUndefined (ReplicationRunList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype GetReplicationRunsResponse _
Generic GetReplicationRunsResponse _
Show GetReplicationRunsResponse
Decode GetReplicationRunsResponse
Encode GetReplicationRunsResponse
```

#### `newGetReplicationRunsResponse`

``` purescript
newGetReplicationRunsResponse :: GetReplicationRunsResponse
```

Constructs GetReplicationRunsResponse from required parameters

#### `newGetReplicationRunsResponse'`

``` purescript
newGetReplicationRunsResponse' :: ({ replicationJob :: NullOrUndefined (ReplicationJob), replicationRunList :: NullOrUndefined (ReplicationRunList), nextToken :: NullOrUndefined (NextToken) } -> { replicationJob :: NullOrUndefined (ReplicationJob), replicationRunList :: NullOrUndefined (ReplicationRunList), nextToken :: NullOrUndefined (NextToken) }) -> GetReplicationRunsResponse
```

Constructs GetReplicationRunsResponse's fields from required parameters

#### `GetServersRequest`

``` purescript
newtype GetServersRequest
  = GetServersRequest { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) }
```

##### Instances
``` purescript
Newtype GetServersRequest _
Generic GetServersRequest _
Show GetServersRequest
Decode GetServersRequest
Encode GetServersRequest
```

#### `newGetServersRequest`

``` purescript
newGetServersRequest :: GetServersRequest
```

Constructs GetServersRequest from required parameters

#### `newGetServersRequest'`

``` purescript
newGetServersRequest' :: ({ nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) } -> { nextToken :: NullOrUndefined (NextToken), maxResults :: NullOrUndefined (MaxResults) }) -> GetServersRequest
```

Constructs GetServersRequest's fields from required parameters

#### `GetServersResponse`

``` purescript
newtype GetServersResponse
  = GetServersResponse { lastModifiedOn :: NullOrUndefined (Timestamp), serverCatalogStatus :: NullOrUndefined (ServerCatalogStatus), serverList :: NullOrUndefined (ServerList), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype GetServersResponse _
Generic GetServersResponse _
Show GetServersResponse
Decode GetServersResponse
Encode GetServersResponse
```

#### `newGetServersResponse`

``` purescript
newGetServersResponse :: GetServersResponse
```

Constructs GetServersResponse from required parameters

#### `newGetServersResponse'`

``` purescript
newGetServersResponse' :: ({ lastModifiedOn :: NullOrUndefined (Timestamp), serverCatalogStatus :: NullOrUndefined (ServerCatalogStatus), serverList :: NullOrUndefined (ServerList), nextToken :: NullOrUndefined (NextToken) } -> { lastModifiedOn :: NullOrUndefined (Timestamp), serverCatalogStatus :: NullOrUndefined (ServerCatalogStatus), serverList :: NullOrUndefined (ServerList), nextToken :: NullOrUndefined (NextToken) }) -> GetServersResponse
```

Constructs GetServersResponse's fields from required parameters

#### `ImportServerCatalogRequest`

``` purescript
newtype ImportServerCatalogRequest
  = ImportServerCatalogRequest NoArguments
```

##### Instances
``` purescript
Newtype ImportServerCatalogRequest _
Generic ImportServerCatalogRequest _
Show ImportServerCatalogRequest
Decode ImportServerCatalogRequest
Encode ImportServerCatalogRequest
```

#### `ImportServerCatalogResponse`

``` purescript
newtype ImportServerCatalogResponse
  = ImportServerCatalogResponse NoArguments
```

##### Instances
``` purescript
Newtype ImportServerCatalogResponse _
Generic ImportServerCatalogResponse _
Show ImportServerCatalogResponse
Decode ImportServerCatalogResponse
Encode ImportServerCatalogResponse
```

#### `InternalError`

``` purescript
newtype InternalError
  = InternalError { message :: NullOrUndefined (ErrorMessage) }
```

An internal error has occured.

##### Instances
``` purescript
Newtype InternalError _
Generic InternalError _
Show InternalError
Decode InternalError
Encode InternalError
```

#### `newInternalError`

``` purescript
newInternalError :: InternalError
```

Constructs InternalError from required parameters

#### `newInternalError'`

``` purescript
newInternalError' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InternalError
```

Constructs InternalError's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: NullOrUndefined (ErrorMessage) }
```

A parameter specified in the request is not valid, is unsupported, or cannot be used.

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `IpAddress`

``` purescript
newtype IpAddress
  = IpAddress String
```

Internet Protocol (IP) Address

##### Instances
``` purescript
Newtype IpAddress _
Generic IpAddress _
Show IpAddress
Decode IpAddress
Encode IpAddress
```

#### `LicenseType`

``` purescript
newtype LicenseType
  = LicenseType String
```

The license type to be used for the Amazon Machine Image (AMI) created after a successful ReplicationRun.

##### Instances
``` purescript
Newtype LicenseType _
Generic LicenseType _
Show LicenseType
Decode LicenseType
Encode LicenseType
```

#### `MacAddress`

``` purescript
newtype MacAddress
  = MacAddress String
```

Hardware (MAC) address

##### Instances
``` purescript
Newtype MacAddress _
Generic MacAddress _
Show MacAddress
Decode MacAddress
Encode MacAddress
```

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

The maximum number of results to return in one API call. If left empty, this will default to 50.

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MissingRequiredParameterException`

``` purescript
newtype MissingRequiredParameterException
  = MissingRequiredParameterException { message :: NullOrUndefined (ErrorMessage) }
```

The request is missing a required parameter. Ensure that you have supplied all the required parameters for the request.

##### Instances
``` purescript
Newtype MissingRequiredParameterException _
Generic MissingRequiredParameterException _
Show MissingRequiredParameterException
Decode MissingRequiredParameterException
Encode MissingRequiredParameterException
```

#### `newMissingRequiredParameterException`

``` purescript
newMissingRequiredParameterException :: MissingRequiredParameterException
```

Constructs MissingRequiredParameterException from required parameters

#### `newMissingRequiredParameterException'`

``` purescript
newMissingRequiredParameterException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> MissingRequiredParameterException
```

Constructs MissingRequiredParameterException's fields from required parameters

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

Pagination token to pass as input to API call

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `NoConnectorsAvailableException`

``` purescript
newtype NoConnectorsAvailableException
  = NoConnectorsAvailableException { message :: NullOrUndefined (ErrorMessage) }
```

No connectors are available to handle this request. Please associate connector(s) and verify any existing connectors are healthy and can respond to requests.

##### Instances
``` purescript
Newtype NoConnectorsAvailableException _
Generic NoConnectorsAvailableException _
Show NoConnectorsAvailableException
Decode NoConnectorsAvailableException
Encode NoConnectorsAvailableException
```

#### `newNoConnectorsAvailableException`

``` purescript
newNoConnectorsAvailableException :: NoConnectorsAvailableException
```

Constructs NoConnectorsAvailableException from required parameters

#### `newNoConnectorsAvailableException'`

``` purescript
newNoConnectorsAvailableException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> NoConnectorsAvailableException
```

Constructs NoConnectorsAvailableException's fields from required parameters

#### `OperationNotPermittedException`

``` purescript
newtype OperationNotPermittedException
  = OperationNotPermittedException { message :: NullOrUndefined (ErrorMessage) }
```

The specified operation is not allowed. This error can occur for a number of reasons; for example, you might be trying to start a Replication Run before seed Replication Run.

##### Instances
``` purescript
Newtype OperationNotPermittedException _
Generic OperationNotPermittedException _
Show OperationNotPermittedException
Decode OperationNotPermittedException
Encode OperationNotPermittedException
```

#### `newOperationNotPermittedException`

``` purescript
newOperationNotPermittedException :: OperationNotPermittedException
```

Constructs OperationNotPermittedException from required parameters

#### `newOperationNotPermittedException'`

``` purescript
newOperationNotPermittedException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> OperationNotPermittedException
```

Constructs OperationNotPermittedException's fields from required parameters

#### `ReplicationJob`

``` purescript
newtype ReplicationJob
  = ReplicationJob { replicationJobId :: NullOrUndefined (ReplicationJobId), serverId :: NullOrUndefined (ServerId), serverType :: NullOrUndefined (ServerType), vmServer :: NullOrUndefined (VmServer), seedReplicationTime :: NullOrUndefined (Timestamp), frequency :: NullOrUndefined (Frequency), nextReplicationRunStartTime :: NullOrUndefined (Timestamp), licenseType :: NullOrUndefined (LicenseType), roleName :: NullOrUndefined (RoleName), latestAmiId :: NullOrUndefined (AmiId), state :: NullOrUndefined (ReplicationJobState), statusMessage :: NullOrUndefined (ReplicationJobStatusMessage), description :: NullOrUndefined (Description), replicationRunList :: NullOrUndefined (ReplicationRunList) }
```

Object representing a Replication Job

##### Instances
``` purescript
Newtype ReplicationJob _
Generic ReplicationJob _
Show ReplicationJob
Decode ReplicationJob
Encode ReplicationJob
```

#### `newReplicationJob`

``` purescript
newReplicationJob :: ReplicationJob
```

Constructs ReplicationJob from required parameters

#### `newReplicationJob'`

``` purescript
newReplicationJob' :: ({ replicationJobId :: NullOrUndefined (ReplicationJobId), serverId :: NullOrUndefined (ServerId), serverType :: NullOrUndefined (ServerType), vmServer :: NullOrUndefined (VmServer), seedReplicationTime :: NullOrUndefined (Timestamp), frequency :: NullOrUndefined (Frequency), nextReplicationRunStartTime :: NullOrUndefined (Timestamp), licenseType :: NullOrUndefined (LicenseType), roleName :: NullOrUndefined (RoleName), latestAmiId :: NullOrUndefined (AmiId), state :: NullOrUndefined (ReplicationJobState), statusMessage :: NullOrUndefined (ReplicationJobStatusMessage), description :: NullOrUndefined (Description), replicationRunList :: NullOrUndefined (ReplicationRunList) } -> { replicationJobId :: NullOrUndefined (ReplicationJobId), serverId :: NullOrUndefined (ServerId), serverType :: NullOrUndefined (ServerType), vmServer :: NullOrUndefined (VmServer), seedReplicationTime :: NullOrUndefined (Timestamp), frequency :: NullOrUndefined (Frequency), nextReplicationRunStartTime :: NullOrUndefined (Timestamp), licenseType :: NullOrUndefined (LicenseType), roleName :: NullOrUndefined (RoleName), latestAmiId :: NullOrUndefined (AmiId), state :: NullOrUndefined (ReplicationJobState), statusMessage :: NullOrUndefined (ReplicationJobStatusMessage), description :: NullOrUndefined (Description), replicationRunList :: NullOrUndefined (ReplicationRunList) }) -> ReplicationJob
```

Constructs ReplicationJob's fields from required parameters

#### `ReplicationJobAlreadyExistsException`

``` purescript
newtype ReplicationJobAlreadyExistsException
  = ReplicationJobAlreadyExistsException { message :: NullOrUndefined (ErrorMessage) }
```

An active Replication Job already exists for the specified server.

##### Instances
``` purescript
Newtype ReplicationJobAlreadyExistsException _
Generic ReplicationJobAlreadyExistsException _
Show ReplicationJobAlreadyExistsException
Decode ReplicationJobAlreadyExistsException
Encode ReplicationJobAlreadyExistsException
```

#### `newReplicationJobAlreadyExistsException`

``` purescript
newReplicationJobAlreadyExistsException :: ReplicationJobAlreadyExistsException
```

Constructs ReplicationJobAlreadyExistsException from required parameters

#### `newReplicationJobAlreadyExistsException'`

``` purescript
newReplicationJobAlreadyExistsException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ReplicationJobAlreadyExistsException
```

Constructs ReplicationJobAlreadyExistsException's fields from required parameters

#### `ReplicationJobId`

``` purescript
newtype ReplicationJobId
  = ReplicationJobId String
```

The unique identifier for a Replication Job.

##### Instances
``` purescript
Newtype ReplicationJobId _
Generic ReplicationJobId _
Show ReplicationJobId
Decode ReplicationJobId
Encode ReplicationJobId
```

#### `ReplicationJobList`

``` purescript
newtype ReplicationJobList
  = ReplicationJobList (Array ReplicationJob)
```

List of Replication Jobs

##### Instances
``` purescript
Newtype ReplicationJobList _
Generic ReplicationJobList _
Show ReplicationJobList
Decode ReplicationJobList
Encode ReplicationJobList
```

#### `ReplicationJobNotFoundException`

``` purescript
newtype ReplicationJobNotFoundException
  = ReplicationJobNotFoundException { message :: NullOrUndefined (ErrorMessage) }
```

The specified Replication Job cannot be found.

##### Instances
``` purescript
Newtype ReplicationJobNotFoundException _
Generic ReplicationJobNotFoundException _
Show ReplicationJobNotFoundException
Decode ReplicationJobNotFoundException
Encode ReplicationJobNotFoundException
```

#### `newReplicationJobNotFoundException`

``` purescript
newReplicationJobNotFoundException :: ReplicationJobNotFoundException
```

Constructs ReplicationJobNotFoundException from required parameters

#### `newReplicationJobNotFoundException'`

``` purescript
newReplicationJobNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ReplicationJobNotFoundException
```

Constructs ReplicationJobNotFoundException's fields from required parameters

#### `ReplicationJobState`

``` purescript
newtype ReplicationJobState
  = ReplicationJobState String
```

Current state of Replication Job

##### Instances
``` purescript
Newtype ReplicationJobState _
Generic ReplicationJobState _
Show ReplicationJobState
Decode ReplicationJobState
Encode ReplicationJobState
```

#### `ReplicationJobStatusMessage`

``` purescript
newtype ReplicationJobStatusMessage
  = ReplicationJobStatusMessage String
```

String describing current status of Replication Job

##### Instances
``` purescript
Newtype ReplicationJobStatusMessage _
Generic ReplicationJobStatusMessage _
Show ReplicationJobStatusMessage
Decode ReplicationJobStatusMessage
Encode ReplicationJobStatusMessage
```

#### `ReplicationJobTerminated`

``` purescript
newtype ReplicationJobTerminated
  = ReplicationJobTerminated Boolean
```

An indicator of the Replication Job being deleted or failed.

##### Instances
``` purescript
Newtype ReplicationJobTerminated _
Generic ReplicationJobTerminated _
Show ReplicationJobTerminated
Decode ReplicationJobTerminated
Encode ReplicationJobTerminated
```

#### `ReplicationRun`

``` purescript
newtype ReplicationRun
  = ReplicationRun { replicationRunId :: NullOrUndefined (ReplicationRunId), state :: NullOrUndefined (ReplicationRunState), "type" :: NullOrUndefined (ReplicationRunType), statusMessage :: NullOrUndefined (ReplicationRunStatusMessage), amiId :: NullOrUndefined (AmiId), scheduledStartTime :: NullOrUndefined (Timestamp), completedTime :: NullOrUndefined (Timestamp), description :: NullOrUndefined (Description) }
```

Object representing a Replication Run

##### Instances
``` purescript
Newtype ReplicationRun _
Generic ReplicationRun _
Show ReplicationRun
Decode ReplicationRun
Encode ReplicationRun
```

#### `newReplicationRun`

``` purescript
newReplicationRun :: ReplicationRun
```

Constructs ReplicationRun from required parameters

#### `newReplicationRun'`

``` purescript
newReplicationRun' :: ({ replicationRunId :: NullOrUndefined (ReplicationRunId), state :: NullOrUndefined (ReplicationRunState), "type" :: NullOrUndefined (ReplicationRunType), statusMessage :: NullOrUndefined (ReplicationRunStatusMessage), amiId :: NullOrUndefined (AmiId), scheduledStartTime :: NullOrUndefined (Timestamp), completedTime :: NullOrUndefined (Timestamp), description :: NullOrUndefined (Description) } -> { replicationRunId :: NullOrUndefined (ReplicationRunId), state :: NullOrUndefined (ReplicationRunState), "type" :: NullOrUndefined (ReplicationRunType), statusMessage :: NullOrUndefined (ReplicationRunStatusMessage), amiId :: NullOrUndefined (AmiId), scheduledStartTime :: NullOrUndefined (Timestamp), completedTime :: NullOrUndefined (Timestamp), description :: NullOrUndefined (Description) }) -> ReplicationRun
```

Constructs ReplicationRun's fields from required parameters

#### `ReplicationRunId`

``` purescript
newtype ReplicationRunId
  = ReplicationRunId String
```

The unique identifier for a Replication Run.

##### Instances
``` purescript
Newtype ReplicationRunId _
Generic ReplicationRunId _
Show ReplicationRunId
Decode ReplicationRunId
Encode ReplicationRunId
```

#### `ReplicationRunLimitExceededException`

``` purescript
newtype ReplicationRunLimitExceededException
  = ReplicationRunLimitExceededException { message :: NullOrUndefined (ErrorMessage) }
```

This user has exceeded the maximum allowed Replication Run limit.

##### Instances
``` purescript
Newtype ReplicationRunLimitExceededException _
Generic ReplicationRunLimitExceededException _
Show ReplicationRunLimitExceededException
Decode ReplicationRunLimitExceededException
Encode ReplicationRunLimitExceededException
```

#### `newReplicationRunLimitExceededException`

``` purescript
newReplicationRunLimitExceededException :: ReplicationRunLimitExceededException
```

Constructs ReplicationRunLimitExceededException from required parameters

#### `newReplicationRunLimitExceededException'`

``` purescript
newReplicationRunLimitExceededException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ReplicationRunLimitExceededException
```

Constructs ReplicationRunLimitExceededException's fields from required parameters

#### `ReplicationRunList`

``` purescript
newtype ReplicationRunList
  = ReplicationRunList (Array ReplicationRun)
```

List of Replication Runs

##### Instances
``` purescript
Newtype ReplicationRunList _
Generic ReplicationRunList _
Show ReplicationRunList
Decode ReplicationRunList
Encode ReplicationRunList
```

#### `ReplicationRunState`

``` purescript
newtype ReplicationRunState
  = ReplicationRunState String
```

Current state of Replication Run

##### Instances
``` purescript
Newtype ReplicationRunState _
Generic ReplicationRunState _
Show ReplicationRunState
Decode ReplicationRunState
Encode ReplicationRunState
```

#### `ReplicationRunStatusMessage`

``` purescript
newtype ReplicationRunStatusMessage
  = ReplicationRunStatusMessage String
```

String describing current status of Replication Run

##### Instances
``` purescript
Newtype ReplicationRunStatusMessage _
Generic ReplicationRunStatusMessage _
Show ReplicationRunStatusMessage
Decode ReplicationRunStatusMessage
Encode ReplicationRunStatusMessage
```

#### `ReplicationRunType`

``` purescript
newtype ReplicationRunType
  = ReplicationRunType String
```

Type of Replication Run

##### Instances
``` purescript
Newtype ReplicationRunType _
Generic ReplicationRunType _
Show ReplicationRunType
Decode ReplicationRunType
Encode ReplicationRunType
```

#### `RoleName`

``` purescript
newtype RoleName
  = RoleName String
```

Name of service role in customer's account to be used by SMS service.

##### Instances
``` purescript
Newtype RoleName _
Generic RoleName _
Show RoleName
Decode RoleName
Encode RoleName
```

#### `Server`

``` purescript
newtype Server
  = Server { serverId :: NullOrUndefined (ServerId), serverType :: NullOrUndefined (ServerType), vmServer :: NullOrUndefined (VmServer), replicationJobId :: NullOrUndefined (ReplicationJobId), replicationJobTerminated :: NullOrUndefined (ReplicationJobTerminated) }
```

Object representing a server

##### Instances
``` purescript
Newtype Server _
Generic Server _
Show Server
Decode Server
Encode Server
```

#### `newServer`

``` purescript
newServer :: Server
```

Constructs Server from required parameters

#### `newServer'`

``` purescript
newServer' :: ({ serverId :: NullOrUndefined (ServerId), serverType :: NullOrUndefined (ServerType), vmServer :: NullOrUndefined (VmServer), replicationJobId :: NullOrUndefined (ReplicationJobId), replicationJobTerminated :: NullOrUndefined (ReplicationJobTerminated) } -> { serverId :: NullOrUndefined (ServerId), serverType :: NullOrUndefined (ServerType), vmServer :: NullOrUndefined (VmServer), replicationJobId :: NullOrUndefined (ReplicationJobId), replicationJobTerminated :: NullOrUndefined (ReplicationJobTerminated) }) -> Server
```

Constructs Server's fields from required parameters

#### `ServerCannotBeReplicatedException`

``` purescript
newtype ServerCannotBeReplicatedException
  = ServerCannotBeReplicatedException { message :: NullOrUndefined (ErrorMessage) }
```

The provided server cannot be replicated.

##### Instances
``` purescript
Newtype ServerCannotBeReplicatedException _
Generic ServerCannotBeReplicatedException _
Show ServerCannotBeReplicatedException
Decode ServerCannotBeReplicatedException
Encode ServerCannotBeReplicatedException
```

#### `newServerCannotBeReplicatedException`

``` purescript
newServerCannotBeReplicatedException :: ServerCannotBeReplicatedException
```

Constructs ServerCannotBeReplicatedException from required parameters

#### `newServerCannotBeReplicatedException'`

``` purescript
newServerCannotBeReplicatedException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ServerCannotBeReplicatedException
```

Constructs ServerCannotBeReplicatedException's fields from required parameters

#### `ServerCatalogStatus`

``` purescript
newtype ServerCatalogStatus
  = ServerCatalogStatus String
```

Status of Server catalog

##### Instances
``` purescript
Newtype ServerCatalogStatus _
Generic ServerCatalogStatus _
Show ServerCatalogStatus
Decode ServerCatalogStatus
Encode ServerCatalogStatus
```

#### `ServerId`

``` purescript
newtype ServerId
  = ServerId String
```

Unique Identifier for a server

##### Instances
``` purescript
Newtype ServerId _
Generic ServerId _
Show ServerId
Decode ServerId
Encode ServerId
```

#### `ServerList`

``` purescript
newtype ServerList
  = ServerList (Array Server)
```

List of servers from catalog

##### Instances
``` purescript
Newtype ServerList _
Generic ServerList _
Show ServerList
Decode ServerList
Encode ServerList
```

#### `ServerType`

``` purescript
newtype ServerType
  = ServerType String
```

Type of server.

##### Instances
``` purescript
Newtype ServerType _
Generic ServerType _
Show ServerType
Decode ServerType
Encode ServerType
```

#### `StartOnDemandReplicationRunRequest`

``` purescript
newtype StartOnDemandReplicationRunRequest
  = StartOnDemandReplicationRunRequest { replicationJobId :: ReplicationJobId, description :: NullOrUndefined (Description) }
```

##### Instances
``` purescript
Newtype StartOnDemandReplicationRunRequest _
Generic StartOnDemandReplicationRunRequest _
Show StartOnDemandReplicationRunRequest
Decode StartOnDemandReplicationRunRequest
Encode StartOnDemandReplicationRunRequest
```

#### `newStartOnDemandReplicationRunRequest`

``` purescript
newStartOnDemandReplicationRunRequest :: ReplicationJobId -> StartOnDemandReplicationRunRequest
```

Constructs StartOnDemandReplicationRunRequest from required parameters

#### `newStartOnDemandReplicationRunRequest'`

``` purescript
newStartOnDemandReplicationRunRequest' :: ReplicationJobId -> ({ replicationJobId :: ReplicationJobId, description :: NullOrUndefined (Description) } -> { replicationJobId :: ReplicationJobId, description :: NullOrUndefined (Description) }) -> StartOnDemandReplicationRunRequest
```

Constructs StartOnDemandReplicationRunRequest's fields from required parameters

#### `StartOnDemandReplicationRunResponse`

``` purescript
newtype StartOnDemandReplicationRunResponse
  = StartOnDemandReplicationRunResponse { replicationRunId :: NullOrUndefined (ReplicationRunId) }
```

##### Instances
``` purescript
Newtype StartOnDemandReplicationRunResponse _
Generic StartOnDemandReplicationRunResponse _
Show StartOnDemandReplicationRunResponse
Decode StartOnDemandReplicationRunResponse
Encode StartOnDemandReplicationRunResponse
```

#### `newStartOnDemandReplicationRunResponse`

``` purescript
newStartOnDemandReplicationRunResponse :: StartOnDemandReplicationRunResponse
```

Constructs StartOnDemandReplicationRunResponse from required parameters

#### `newStartOnDemandReplicationRunResponse'`

``` purescript
newStartOnDemandReplicationRunResponse' :: ({ replicationRunId :: NullOrUndefined (ReplicationRunId) } -> { replicationRunId :: NullOrUndefined (ReplicationRunId) }) -> StartOnDemandReplicationRunResponse
```

Constructs StartOnDemandReplicationRunResponse's fields from required parameters

#### `UnauthorizedOperationException`

``` purescript
newtype UnauthorizedOperationException
  = UnauthorizedOperationException { message :: NullOrUndefined (ErrorMessage) }
```

This user does not have permissions to perform this operation.

##### Instances
``` purescript
Newtype UnauthorizedOperationException _
Generic UnauthorizedOperationException _
Show UnauthorizedOperationException
Decode UnauthorizedOperationException
Encode UnauthorizedOperationException
```

#### `newUnauthorizedOperationException`

``` purescript
newUnauthorizedOperationException :: UnauthorizedOperationException
```

Constructs UnauthorizedOperationException from required parameters

#### `newUnauthorizedOperationException'`

``` purescript
newUnauthorizedOperationException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> UnauthorizedOperationException
```

Constructs UnauthorizedOperationException's fields from required parameters

#### `UpdateReplicationJobRequest`

``` purescript
newtype UpdateReplicationJobRequest
  = UpdateReplicationJobRequest { replicationJobId :: ReplicationJobId, frequency :: NullOrUndefined (Frequency), nextReplicationRunStartTime :: NullOrUndefined (Timestamp), licenseType :: NullOrUndefined (LicenseType), roleName :: NullOrUndefined (RoleName), description :: NullOrUndefined (Description) }
```

##### Instances
``` purescript
Newtype UpdateReplicationJobRequest _
Generic UpdateReplicationJobRequest _
Show UpdateReplicationJobRequest
Decode UpdateReplicationJobRequest
Encode UpdateReplicationJobRequest
```

#### `newUpdateReplicationJobRequest`

``` purescript
newUpdateReplicationJobRequest :: ReplicationJobId -> UpdateReplicationJobRequest
```

Constructs UpdateReplicationJobRequest from required parameters

#### `newUpdateReplicationJobRequest'`

``` purescript
newUpdateReplicationJobRequest' :: ReplicationJobId -> ({ replicationJobId :: ReplicationJobId, frequency :: NullOrUndefined (Frequency), nextReplicationRunStartTime :: NullOrUndefined (Timestamp), licenseType :: NullOrUndefined (LicenseType), roleName :: NullOrUndefined (RoleName), description :: NullOrUndefined (Description) } -> { replicationJobId :: ReplicationJobId, frequency :: NullOrUndefined (Frequency), nextReplicationRunStartTime :: NullOrUndefined (Timestamp), licenseType :: NullOrUndefined (LicenseType), roleName :: NullOrUndefined (RoleName), description :: NullOrUndefined (Description) }) -> UpdateReplicationJobRequest
```

Constructs UpdateReplicationJobRequest's fields from required parameters

#### `UpdateReplicationJobResponse`

``` purescript
newtype UpdateReplicationJobResponse
  = UpdateReplicationJobResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateReplicationJobResponse _
Generic UpdateReplicationJobResponse _
Show UpdateReplicationJobResponse
Decode UpdateReplicationJobResponse
Encode UpdateReplicationJobResponse
```

#### `VmId`

``` purescript
newtype VmId
  = VmId String
```

Unique Identifier for a VM

##### Instances
``` purescript
Newtype VmId _
Generic VmId _
Show VmId
Decode VmId
Encode VmId
```

#### `VmManagerId`

``` purescript
newtype VmManagerId
  = VmManagerId String
```

Unique Identifier for VM Manager

##### Instances
``` purescript
Newtype VmManagerId _
Generic VmManagerId _
Show VmManagerId
Decode VmManagerId
Encode VmManagerId
```

#### `VmManagerName`

``` purescript
newtype VmManagerName
  = VmManagerName String
```

VM Manager Name

##### Instances
``` purescript
Newtype VmManagerName _
Generic VmManagerName _
Show VmManagerName
Decode VmManagerName
Encode VmManagerName
```

#### `VmManagerType`

``` purescript
newtype VmManagerType
  = VmManagerType String
```

VM Management Product

##### Instances
``` purescript
Newtype VmManagerType _
Generic VmManagerType _
Show VmManagerType
Decode VmManagerType
Encode VmManagerType
```

#### `VmName`

``` purescript
newtype VmName
  = VmName String
```

Name of Virtual Machine

##### Instances
``` purescript
Newtype VmName _
Generic VmName _
Show VmName
Decode VmName
Encode VmName
```

#### `VmPath`

``` purescript
newtype VmPath
  = VmPath String
```

Path to VM

##### Instances
``` purescript
Newtype VmPath _
Generic VmPath _
Show VmPath
Decode VmPath
Encode VmPath
```

#### `VmServer`

``` purescript
newtype VmServer
  = VmServer { vmServerAddress :: NullOrUndefined (VmServerAddress), vmName :: NullOrUndefined (VmName), vmManagerName :: NullOrUndefined (VmManagerName), vmManagerType :: NullOrUndefined (VmManagerType), vmPath :: NullOrUndefined (VmPath) }
```

Object representing a VM server

##### Instances
``` purescript
Newtype VmServer _
Generic VmServer _
Show VmServer
Decode VmServer
Encode VmServer
```

#### `newVmServer`

``` purescript
newVmServer :: VmServer
```

Constructs VmServer from required parameters

#### `newVmServer'`

``` purescript
newVmServer' :: ({ vmServerAddress :: NullOrUndefined (VmServerAddress), vmName :: NullOrUndefined (VmName), vmManagerName :: NullOrUndefined (VmManagerName), vmManagerType :: NullOrUndefined (VmManagerType), vmPath :: NullOrUndefined (VmPath) } -> { vmServerAddress :: NullOrUndefined (VmServerAddress), vmName :: NullOrUndefined (VmName), vmManagerName :: NullOrUndefined (VmManagerName), vmManagerType :: NullOrUndefined (VmManagerType), vmPath :: NullOrUndefined (VmPath) }) -> VmServer
```

Constructs VmServer's fields from required parameters

#### `VmServerAddress`

``` purescript
newtype VmServerAddress
  = VmServerAddress { vmManagerId :: NullOrUndefined (VmManagerId), vmId :: NullOrUndefined (VmId) }
```

Object representing a server's location

##### Instances
``` purescript
Newtype VmServerAddress _
Generic VmServerAddress _
Show VmServerAddress
Decode VmServerAddress
Encode VmServerAddress
```

#### `newVmServerAddress`

``` purescript
newVmServerAddress :: VmServerAddress
```

Constructs VmServerAddress from required parameters

#### `newVmServerAddress'`

``` purescript
newVmServerAddress' :: ({ vmManagerId :: NullOrUndefined (VmManagerId), vmId :: NullOrUndefined (VmId) } -> { vmManagerId :: NullOrUndefined (VmManagerId), vmId :: NullOrUndefined (VmId) }) -> VmServerAddress
```

Constructs VmServerAddress's fields from required parameters


