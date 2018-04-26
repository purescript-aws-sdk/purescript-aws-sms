
module AWS.SMS.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | The AMI id for the image resulting from a Replication Run.
newtype AmiId = AmiId String
derive instance newtypeAmiId :: Newtype AmiId _
derive instance repGenericAmiId :: Generic AmiId _
instance showAmiId :: Show AmiId where show = genericShow
instance decodeAmiId :: Decode AmiId where decode = genericDecode options
instance encodeAmiId :: Encode AmiId where encode = genericEncode options



-- | Object representing a Connector
newtype Connector = Connector 
  { "connectorId" :: Maybe (ConnectorId)
  , "version" :: Maybe (ConnectorVersion)
  , "status" :: Maybe (ConnectorStatus)
  , "capabilityList" :: Maybe (ConnectorCapabilityList)
  , "vmManagerName" :: Maybe (VmManagerName)
  , "vmManagerType" :: Maybe (VmManagerType)
  , "vmManagerId" :: Maybe (VmManagerId)
  , "ipAddress" :: Maybe (IpAddress)
  , "macAddress" :: Maybe (MacAddress)
  , "associatedOn" :: Maybe (Types.Timestamp)
  }
derive instance newtypeConnector :: Newtype Connector _
derive instance repGenericConnector :: Generic Connector _
instance showConnector :: Show Connector where show = genericShow
instance decodeConnector :: Decode Connector where decode = genericDecode options
instance encodeConnector :: Encode Connector where encode = genericEncode options

-- | Constructs Connector from required parameters
newConnector :: Connector
newConnector  = Connector { "associatedOn": Nothing, "capabilityList": Nothing, "connectorId": Nothing, "ipAddress": Nothing, "macAddress": Nothing, "status": Nothing, "version": Nothing, "vmManagerId": Nothing, "vmManagerName": Nothing, "vmManagerType": Nothing }

-- | Constructs Connector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConnector' :: ( { "connectorId" :: Maybe (ConnectorId) , "version" :: Maybe (ConnectorVersion) , "status" :: Maybe (ConnectorStatus) , "capabilityList" :: Maybe (ConnectorCapabilityList) , "vmManagerName" :: Maybe (VmManagerName) , "vmManagerType" :: Maybe (VmManagerType) , "vmManagerId" :: Maybe (VmManagerId) , "ipAddress" :: Maybe (IpAddress) , "macAddress" :: Maybe (MacAddress) , "associatedOn" :: Maybe (Types.Timestamp) } -> {"connectorId" :: Maybe (ConnectorId) , "version" :: Maybe (ConnectorVersion) , "status" :: Maybe (ConnectorStatus) , "capabilityList" :: Maybe (ConnectorCapabilityList) , "vmManagerName" :: Maybe (VmManagerName) , "vmManagerType" :: Maybe (VmManagerType) , "vmManagerId" :: Maybe (VmManagerId) , "ipAddress" :: Maybe (IpAddress) , "macAddress" :: Maybe (MacAddress) , "associatedOn" :: Maybe (Types.Timestamp) } ) -> Connector
newConnector'  customize = (Connector <<< customize) { "associatedOn": Nothing, "capabilityList": Nothing, "connectorId": Nothing, "ipAddress": Nothing, "macAddress": Nothing, "status": Nothing, "version": Nothing, "vmManagerId": Nothing, "vmManagerName": Nothing, "vmManagerType": Nothing }



-- | Capabilities for a Connector
newtype ConnectorCapability = ConnectorCapability String
derive instance newtypeConnectorCapability :: Newtype ConnectorCapability _
derive instance repGenericConnectorCapability :: Generic ConnectorCapability _
instance showConnectorCapability :: Show ConnectorCapability where show = genericShow
instance decodeConnectorCapability :: Decode ConnectorCapability where decode = genericDecode options
instance encodeConnectorCapability :: Encode ConnectorCapability where encode = genericEncode options



-- | List of Connector Capabilities
newtype ConnectorCapabilityList = ConnectorCapabilityList (Array ConnectorCapability)
derive instance newtypeConnectorCapabilityList :: Newtype ConnectorCapabilityList _
derive instance repGenericConnectorCapabilityList :: Generic ConnectorCapabilityList _
instance showConnectorCapabilityList :: Show ConnectorCapabilityList where show = genericShow
instance decodeConnectorCapabilityList :: Decode ConnectorCapabilityList where decode = genericDecode options
instance encodeConnectorCapabilityList :: Encode ConnectorCapabilityList where encode = genericEncode options



-- | Unique Identifier for Connector
newtype ConnectorId = ConnectorId String
derive instance newtypeConnectorId :: Newtype ConnectorId _
derive instance repGenericConnectorId :: Generic ConnectorId _
instance showConnectorId :: Show ConnectorId where show = genericShow
instance decodeConnectorId :: Decode ConnectorId where decode = genericDecode options
instance encodeConnectorId :: Encode ConnectorId where encode = genericEncode options



-- | List of connectors
newtype ConnectorList = ConnectorList (Array Connector)
derive instance newtypeConnectorList :: Newtype ConnectorList _
derive instance repGenericConnectorList :: Generic ConnectorList _
instance showConnectorList :: Show ConnectorList where show = genericShow
instance decodeConnectorList :: Decode ConnectorList where decode = genericDecode options
instance encodeConnectorList :: Encode ConnectorList where encode = genericEncode options



-- | Status of on-premise Connector
newtype ConnectorStatus = ConnectorStatus String
derive instance newtypeConnectorStatus :: Newtype ConnectorStatus _
derive instance repGenericConnectorStatus :: Generic ConnectorStatus _
instance showConnectorStatus :: Show ConnectorStatus where show = genericShow
instance decodeConnectorStatus :: Decode ConnectorStatus where decode = genericDecode options
instance encodeConnectorStatus :: Encode ConnectorStatus where encode = genericEncode options



-- | Connector version string
newtype ConnectorVersion = ConnectorVersion String
derive instance newtypeConnectorVersion :: Newtype ConnectorVersion _
derive instance repGenericConnectorVersion :: Generic ConnectorVersion _
instance showConnectorVersion :: Show ConnectorVersion where show = genericShow
instance decodeConnectorVersion :: Decode ConnectorVersion where decode = genericDecode options
instance encodeConnectorVersion :: Encode ConnectorVersion where encode = genericEncode options



newtype CreateReplicationJobRequest = CreateReplicationJobRequest 
  { "serverId" :: (ServerId)
  , "seedReplicationTime" :: (Types.Timestamp)
  , "frequency" :: (Frequency)
  , "licenseType" :: Maybe (LicenseType)
  , "roleName" :: Maybe (RoleName)
  , "description" :: Maybe (Description)
  }
derive instance newtypeCreateReplicationJobRequest :: Newtype CreateReplicationJobRequest _
derive instance repGenericCreateReplicationJobRequest :: Generic CreateReplicationJobRequest _
instance showCreateReplicationJobRequest :: Show CreateReplicationJobRequest where show = genericShow
instance decodeCreateReplicationJobRequest :: Decode CreateReplicationJobRequest where decode = genericDecode options
instance encodeCreateReplicationJobRequest :: Encode CreateReplicationJobRequest where encode = genericEncode options

-- | Constructs CreateReplicationJobRequest from required parameters
newCreateReplicationJobRequest :: Frequency -> Types.Timestamp -> ServerId -> CreateReplicationJobRequest
newCreateReplicationJobRequest _frequency _seedReplicationTime _serverId = CreateReplicationJobRequest { "frequency": _frequency, "seedReplicationTime": _seedReplicationTime, "serverId": _serverId, "description": Nothing, "licenseType": Nothing, "roleName": Nothing }

-- | Constructs CreateReplicationJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateReplicationJobRequest' :: Frequency -> Types.Timestamp -> ServerId -> ( { "serverId" :: (ServerId) , "seedReplicationTime" :: (Types.Timestamp) , "frequency" :: (Frequency) , "licenseType" :: Maybe (LicenseType) , "roleName" :: Maybe (RoleName) , "description" :: Maybe (Description) } -> {"serverId" :: (ServerId) , "seedReplicationTime" :: (Types.Timestamp) , "frequency" :: (Frequency) , "licenseType" :: Maybe (LicenseType) , "roleName" :: Maybe (RoleName) , "description" :: Maybe (Description) } ) -> CreateReplicationJobRequest
newCreateReplicationJobRequest' _frequency _seedReplicationTime _serverId customize = (CreateReplicationJobRequest <<< customize) { "frequency": _frequency, "seedReplicationTime": _seedReplicationTime, "serverId": _serverId, "description": Nothing, "licenseType": Nothing, "roleName": Nothing }



newtype CreateReplicationJobResponse = CreateReplicationJobResponse 
  { "replicationJobId" :: Maybe (ReplicationJobId)
  }
derive instance newtypeCreateReplicationJobResponse :: Newtype CreateReplicationJobResponse _
derive instance repGenericCreateReplicationJobResponse :: Generic CreateReplicationJobResponse _
instance showCreateReplicationJobResponse :: Show CreateReplicationJobResponse where show = genericShow
instance decodeCreateReplicationJobResponse :: Decode CreateReplicationJobResponse where decode = genericDecode options
instance encodeCreateReplicationJobResponse :: Encode CreateReplicationJobResponse where encode = genericEncode options

-- | Constructs CreateReplicationJobResponse from required parameters
newCreateReplicationJobResponse :: CreateReplicationJobResponse
newCreateReplicationJobResponse  = CreateReplicationJobResponse { "replicationJobId": Nothing }

-- | Constructs CreateReplicationJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateReplicationJobResponse' :: ( { "replicationJobId" :: Maybe (ReplicationJobId) } -> {"replicationJobId" :: Maybe (ReplicationJobId) } ) -> CreateReplicationJobResponse
newCreateReplicationJobResponse'  customize = (CreateReplicationJobResponse <<< customize) { "replicationJobId": Nothing }



newtype DeleteReplicationJobRequest = DeleteReplicationJobRequest 
  { "replicationJobId" :: (ReplicationJobId)
  }
derive instance newtypeDeleteReplicationJobRequest :: Newtype DeleteReplicationJobRequest _
derive instance repGenericDeleteReplicationJobRequest :: Generic DeleteReplicationJobRequest _
instance showDeleteReplicationJobRequest :: Show DeleteReplicationJobRequest where show = genericShow
instance decodeDeleteReplicationJobRequest :: Decode DeleteReplicationJobRequest where decode = genericDecode options
instance encodeDeleteReplicationJobRequest :: Encode DeleteReplicationJobRequest where encode = genericEncode options

-- | Constructs DeleteReplicationJobRequest from required parameters
newDeleteReplicationJobRequest :: ReplicationJobId -> DeleteReplicationJobRequest
newDeleteReplicationJobRequest _replicationJobId = DeleteReplicationJobRequest { "replicationJobId": _replicationJobId }

-- | Constructs DeleteReplicationJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteReplicationJobRequest' :: ReplicationJobId -> ( { "replicationJobId" :: (ReplicationJobId) } -> {"replicationJobId" :: (ReplicationJobId) } ) -> DeleteReplicationJobRequest
newDeleteReplicationJobRequest' _replicationJobId customize = (DeleteReplicationJobRequest <<< customize) { "replicationJobId": _replicationJobId }



newtype DeleteReplicationJobResponse = DeleteReplicationJobResponse Types.NoArguments
derive instance newtypeDeleteReplicationJobResponse :: Newtype DeleteReplicationJobResponse _
derive instance repGenericDeleteReplicationJobResponse :: Generic DeleteReplicationJobResponse _
instance showDeleteReplicationJobResponse :: Show DeleteReplicationJobResponse where show = genericShow
instance decodeDeleteReplicationJobResponse :: Decode DeleteReplicationJobResponse where decode = genericDecode options
instance encodeDeleteReplicationJobResponse :: Encode DeleteReplicationJobResponse where encode = genericEncode options



newtype DeleteServerCatalogRequest = DeleteServerCatalogRequest Types.NoArguments
derive instance newtypeDeleteServerCatalogRequest :: Newtype DeleteServerCatalogRequest _
derive instance repGenericDeleteServerCatalogRequest :: Generic DeleteServerCatalogRequest _
instance showDeleteServerCatalogRequest :: Show DeleteServerCatalogRequest where show = genericShow
instance decodeDeleteServerCatalogRequest :: Decode DeleteServerCatalogRequest where decode = genericDecode options
instance encodeDeleteServerCatalogRequest :: Encode DeleteServerCatalogRequest where encode = genericEncode options



newtype DeleteServerCatalogResponse = DeleteServerCatalogResponse Types.NoArguments
derive instance newtypeDeleteServerCatalogResponse :: Newtype DeleteServerCatalogResponse _
derive instance repGenericDeleteServerCatalogResponse :: Generic DeleteServerCatalogResponse _
instance showDeleteServerCatalogResponse :: Show DeleteServerCatalogResponse where show = genericShow
instance decodeDeleteServerCatalogResponse :: Decode DeleteServerCatalogResponse where decode = genericDecode options
instance encodeDeleteServerCatalogResponse :: Encode DeleteServerCatalogResponse where encode = genericEncode options



-- | The description for a Replication Job/Run.
newtype Description = Description String
derive instance newtypeDescription :: Newtype Description _
derive instance repGenericDescription :: Generic Description _
instance showDescription :: Show Description where show = genericShow
instance decodeDescription :: Decode Description where decode = genericDecode options
instance encodeDescription :: Encode Description where encode = genericEncode options



newtype DisassociateConnectorRequest = DisassociateConnectorRequest 
  { "connectorId" :: (ConnectorId)
  }
derive instance newtypeDisassociateConnectorRequest :: Newtype DisassociateConnectorRequest _
derive instance repGenericDisassociateConnectorRequest :: Generic DisassociateConnectorRequest _
instance showDisassociateConnectorRequest :: Show DisassociateConnectorRequest where show = genericShow
instance decodeDisassociateConnectorRequest :: Decode DisassociateConnectorRequest where decode = genericDecode options
instance encodeDisassociateConnectorRequest :: Encode DisassociateConnectorRequest where encode = genericEncode options

-- | Constructs DisassociateConnectorRequest from required parameters
newDisassociateConnectorRequest :: ConnectorId -> DisassociateConnectorRequest
newDisassociateConnectorRequest _connectorId = DisassociateConnectorRequest { "connectorId": _connectorId }

-- | Constructs DisassociateConnectorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateConnectorRequest' :: ConnectorId -> ( { "connectorId" :: (ConnectorId) } -> {"connectorId" :: (ConnectorId) } ) -> DisassociateConnectorRequest
newDisassociateConnectorRequest' _connectorId customize = (DisassociateConnectorRequest <<< customize) { "connectorId": _connectorId }



newtype DisassociateConnectorResponse = DisassociateConnectorResponse Types.NoArguments
derive instance newtypeDisassociateConnectorResponse :: Newtype DisassociateConnectorResponse _
derive instance repGenericDisassociateConnectorResponse :: Generic DisassociateConnectorResponse _
instance showDisassociateConnectorResponse :: Show DisassociateConnectorResponse where show = genericShow
instance decodeDisassociateConnectorResponse :: Decode DisassociateConnectorResponse where decode = genericDecode options
instance encodeDisassociateConnectorResponse :: Encode DisassociateConnectorResponse where encode = genericEncode options



-- | Error Message string
newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | Interval between Replication Runs. This value is specified in hours, and represents the time between consecutive Replication Runs.
newtype Frequency = Frequency Int
derive instance newtypeFrequency :: Newtype Frequency _
derive instance repGenericFrequency :: Generic Frequency _
instance showFrequency :: Show Frequency where show = genericShow
instance decodeFrequency :: Decode Frequency where decode = genericDecode options
instance encodeFrequency :: Encode Frequency where encode = genericEncode options



newtype GetConnectorsRequest = GetConnectorsRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeGetConnectorsRequest :: Newtype GetConnectorsRequest _
derive instance repGenericGetConnectorsRequest :: Generic GetConnectorsRequest _
instance showGetConnectorsRequest :: Show GetConnectorsRequest where show = genericShow
instance decodeGetConnectorsRequest :: Decode GetConnectorsRequest where decode = genericDecode options
instance encodeGetConnectorsRequest :: Encode GetConnectorsRequest where encode = genericEncode options

-- | Constructs GetConnectorsRequest from required parameters
newGetConnectorsRequest :: GetConnectorsRequest
newGetConnectorsRequest  = GetConnectorsRequest { "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs GetConnectorsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetConnectorsRequest' :: ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } ) -> GetConnectorsRequest
newGetConnectorsRequest'  customize = (GetConnectorsRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing }



newtype GetConnectorsResponse = GetConnectorsResponse 
  { "connectorList" :: Maybe (ConnectorList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetConnectorsResponse :: Newtype GetConnectorsResponse _
derive instance repGenericGetConnectorsResponse :: Generic GetConnectorsResponse _
instance showGetConnectorsResponse :: Show GetConnectorsResponse where show = genericShow
instance decodeGetConnectorsResponse :: Decode GetConnectorsResponse where decode = genericDecode options
instance encodeGetConnectorsResponse :: Encode GetConnectorsResponse where encode = genericEncode options

-- | Constructs GetConnectorsResponse from required parameters
newGetConnectorsResponse :: GetConnectorsResponse
newGetConnectorsResponse  = GetConnectorsResponse { "connectorList": Nothing, "nextToken": Nothing }

-- | Constructs GetConnectorsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetConnectorsResponse' :: ( { "connectorList" :: Maybe (ConnectorList) , "nextToken" :: Maybe (NextToken) } -> {"connectorList" :: Maybe (ConnectorList) , "nextToken" :: Maybe (NextToken) } ) -> GetConnectorsResponse
newGetConnectorsResponse'  customize = (GetConnectorsResponse <<< customize) { "connectorList": Nothing, "nextToken": Nothing }



newtype GetReplicationJobsRequest = GetReplicationJobsRequest 
  { "replicationJobId" :: Maybe (ReplicationJobId)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeGetReplicationJobsRequest :: Newtype GetReplicationJobsRequest _
derive instance repGenericGetReplicationJobsRequest :: Generic GetReplicationJobsRequest _
instance showGetReplicationJobsRequest :: Show GetReplicationJobsRequest where show = genericShow
instance decodeGetReplicationJobsRequest :: Decode GetReplicationJobsRequest where decode = genericDecode options
instance encodeGetReplicationJobsRequest :: Encode GetReplicationJobsRequest where encode = genericEncode options

-- | Constructs GetReplicationJobsRequest from required parameters
newGetReplicationJobsRequest :: GetReplicationJobsRequest
newGetReplicationJobsRequest  = GetReplicationJobsRequest { "maxResults": Nothing, "nextToken": Nothing, "replicationJobId": Nothing }

-- | Constructs GetReplicationJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReplicationJobsRequest' :: ( { "replicationJobId" :: Maybe (ReplicationJobId) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } -> {"replicationJobId" :: Maybe (ReplicationJobId) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } ) -> GetReplicationJobsRequest
newGetReplicationJobsRequest'  customize = (GetReplicationJobsRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing, "replicationJobId": Nothing }



newtype GetReplicationJobsResponse = GetReplicationJobsResponse 
  { "replicationJobList" :: Maybe (ReplicationJobList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetReplicationJobsResponse :: Newtype GetReplicationJobsResponse _
derive instance repGenericGetReplicationJobsResponse :: Generic GetReplicationJobsResponse _
instance showGetReplicationJobsResponse :: Show GetReplicationJobsResponse where show = genericShow
instance decodeGetReplicationJobsResponse :: Decode GetReplicationJobsResponse where decode = genericDecode options
instance encodeGetReplicationJobsResponse :: Encode GetReplicationJobsResponse where encode = genericEncode options

-- | Constructs GetReplicationJobsResponse from required parameters
newGetReplicationJobsResponse :: GetReplicationJobsResponse
newGetReplicationJobsResponse  = GetReplicationJobsResponse { "nextToken": Nothing, "replicationJobList": Nothing }

-- | Constructs GetReplicationJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReplicationJobsResponse' :: ( { "replicationJobList" :: Maybe (ReplicationJobList) , "nextToken" :: Maybe (NextToken) } -> {"replicationJobList" :: Maybe (ReplicationJobList) , "nextToken" :: Maybe (NextToken) } ) -> GetReplicationJobsResponse
newGetReplicationJobsResponse'  customize = (GetReplicationJobsResponse <<< customize) { "nextToken": Nothing, "replicationJobList": Nothing }



newtype GetReplicationRunsRequest = GetReplicationRunsRequest 
  { "replicationJobId" :: (ReplicationJobId)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeGetReplicationRunsRequest :: Newtype GetReplicationRunsRequest _
derive instance repGenericGetReplicationRunsRequest :: Generic GetReplicationRunsRequest _
instance showGetReplicationRunsRequest :: Show GetReplicationRunsRequest where show = genericShow
instance decodeGetReplicationRunsRequest :: Decode GetReplicationRunsRequest where decode = genericDecode options
instance encodeGetReplicationRunsRequest :: Encode GetReplicationRunsRequest where encode = genericEncode options

-- | Constructs GetReplicationRunsRequest from required parameters
newGetReplicationRunsRequest :: ReplicationJobId -> GetReplicationRunsRequest
newGetReplicationRunsRequest _replicationJobId = GetReplicationRunsRequest { "replicationJobId": _replicationJobId, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs GetReplicationRunsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReplicationRunsRequest' :: ReplicationJobId -> ( { "replicationJobId" :: (ReplicationJobId) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } -> {"replicationJobId" :: (ReplicationJobId) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } ) -> GetReplicationRunsRequest
newGetReplicationRunsRequest' _replicationJobId customize = (GetReplicationRunsRequest <<< customize) { "replicationJobId": _replicationJobId, "maxResults": Nothing, "nextToken": Nothing }



newtype GetReplicationRunsResponse = GetReplicationRunsResponse 
  { "replicationJob" :: Maybe (ReplicationJob)
  , "replicationRunList" :: Maybe (ReplicationRunList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetReplicationRunsResponse :: Newtype GetReplicationRunsResponse _
derive instance repGenericGetReplicationRunsResponse :: Generic GetReplicationRunsResponse _
instance showGetReplicationRunsResponse :: Show GetReplicationRunsResponse where show = genericShow
instance decodeGetReplicationRunsResponse :: Decode GetReplicationRunsResponse where decode = genericDecode options
instance encodeGetReplicationRunsResponse :: Encode GetReplicationRunsResponse where encode = genericEncode options

-- | Constructs GetReplicationRunsResponse from required parameters
newGetReplicationRunsResponse :: GetReplicationRunsResponse
newGetReplicationRunsResponse  = GetReplicationRunsResponse { "nextToken": Nothing, "replicationJob": Nothing, "replicationRunList": Nothing }

-- | Constructs GetReplicationRunsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReplicationRunsResponse' :: ( { "replicationJob" :: Maybe (ReplicationJob) , "replicationRunList" :: Maybe (ReplicationRunList) , "nextToken" :: Maybe (NextToken) } -> {"replicationJob" :: Maybe (ReplicationJob) , "replicationRunList" :: Maybe (ReplicationRunList) , "nextToken" :: Maybe (NextToken) } ) -> GetReplicationRunsResponse
newGetReplicationRunsResponse'  customize = (GetReplicationRunsResponse <<< customize) { "nextToken": Nothing, "replicationJob": Nothing, "replicationRunList": Nothing }



newtype GetServersRequest = GetServersRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeGetServersRequest :: Newtype GetServersRequest _
derive instance repGenericGetServersRequest :: Generic GetServersRequest _
instance showGetServersRequest :: Show GetServersRequest where show = genericShow
instance decodeGetServersRequest :: Decode GetServersRequest where decode = genericDecode options
instance encodeGetServersRequest :: Encode GetServersRequest where encode = genericEncode options

-- | Constructs GetServersRequest from required parameters
newGetServersRequest :: GetServersRequest
newGetServersRequest  = GetServersRequest { "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs GetServersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServersRequest' :: ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } ) -> GetServersRequest
newGetServersRequest'  customize = (GetServersRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing }



newtype GetServersResponse = GetServersResponse 
  { "lastModifiedOn" :: Maybe (Types.Timestamp)
  , "serverCatalogStatus" :: Maybe (ServerCatalogStatus)
  , "serverList" :: Maybe (ServerList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetServersResponse :: Newtype GetServersResponse _
derive instance repGenericGetServersResponse :: Generic GetServersResponse _
instance showGetServersResponse :: Show GetServersResponse where show = genericShow
instance decodeGetServersResponse :: Decode GetServersResponse where decode = genericDecode options
instance encodeGetServersResponse :: Encode GetServersResponse where encode = genericEncode options

-- | Constructs GetServersResponse from required parameters
newGetServersResponse :: GetServersResponse
newGetServersResponse  = GetServersResponse { "lastModifiedOn": Nothing, "nextToken": Nothing, "serverCatalogStatus": Nothing, "serverList": Nothing }

-- | Constructs GetServersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServersResponse' :: ( { "lastModifiedOn" :: Maybe (Types.Timestamp) , "serverCatalogStatus" :: Maybe (ServerCatalogStatus) , "serverList" :: Maybe (ServerList) , "nextToken" :: Maybe (NextToken) } -> {"lastModifiedOn" :: Maybe (Types.Timestamp) , "serverCatalogStatus" :: Maybe (ServerCatalogStatus) , "serverList" :: Maybe (ServerList) , "nextToken" :: Maybe (NextToken) } ) -> GetServersResponse
newGetServersResponse'  customize = (GetServersResponse <<< customize) { "lastModifiedOn": Nothing, "nextToken": Nothing, "serverCatalogStatus": Nothing, "serverList": Nothing }



newtype ImportServerCatalogRequest = ImportServerCatalogRequest Types.NoArguments
derive instance newtypeImportServerCatalogRequest :: Newtype ImportServerCatalogRequest _
derive instance repGenericImportServerCatalogRequest :: Generic ImportServerCatalogRequest _
instance showImportServerCatalogRequest :: Show ImportServerCatalogRequest where show = genericShow
instance decodeImportServerCatalogRequest :: Decode ImportServerCatalogRequest where decode = genericDecode options
instance encodeImportServerCatalogRequest :: Encode ImportServerCatalogRequest where encode = genericEncode options



newtype ImportServerCatalogResponse = ImportServerCatalogResponse Types.NoArguments
derive instance newtypeImportServerCatalogResponse :: Newtype ImportServerCatalogResponse _
derive instance repGenericImportServerCatalogResponse :: Generic ImportServerCatalogResponse _
instance showImportServerCatalogResponse :: Show ImportServerCatalogResponse where show = genericShow
instance decodeImportServerCatalogResponse :: Decode ImportServerCatalogResponse where decode = genericDecode options
instance encodeImportServerCatalogResponse :: Encode ImportServerCatalogResponse where encode = genericEncode options



-- | An internal error has occured.
newtype InternalError = InternalError 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInternalError :: Newtype InternalError _
derive instance repGenericInternalError :: Generic InternalError _
instance showInternalError :: Show InternalError where show = genericShow
instance decodeInternalError :: Decode InternalError where decode = genericDecode options
instance encodeInternalError :: Encode InternalError where encode = genericEncode options

-- | Constructs InternalError from required parameters
newInternalError :: InternalError
newInternalError  = InternalError { "message": Nothing }

-- | Constructs InternalError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalError' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InternalError
newInternalError'  customize = (InternalError <<< customize) { "message": Nothing }



-- | A parameter specified in the request is not valid, is unsupported, or cannot be used.
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": Nothing }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": Nothing }



-- | Internet Protocol (IP) Address
newtype IpAddress = IpAddress String
derive instance newtypeIpAddress :: Newtype IpAddress _
derive instance repGenericIpAddress :: Generic IpAddress _
instance showIpAddress :: Show IpAddress where show = genericShow
instance decodeIpAddress :: Decode IpAddress where decode = genericDecode options
instance encodeIpAddress :: Encode IpAddress where encode = genericEncode options



-- | The license type to be used for the Amazon Machine Image (AMI) created after a successful ReplicationRun.
newtype LicenseType = LicenseType String
derive instance newtypeLicenseType :: Newtype LicenseType _
derive instance repGenericLicenseType :: Generic LicenseType _
instance showLicenseType :: Show LicenseType where show = genericShow
instance decodeLicenseType :: Decode LicenseType where decode = genericDecode options
instance encodeLicenseType :: Encode LicenseType where encode = genericEncode options



-- | Hardware (MAC) address
newtype MacAddress = MacAddress String
derive instance newtypeMacAddress :: Newtype MacAddress _
derive instance repGenericMacAddress :: Generic MacAddress _
instance showMacAddress :: Show MacAddress where show = genericShow
instance decodeMacAddress :: Decode MacAddress where decode = genericDecode options
instance encodeMacAddress :: Encode MacAddress where encode = genericEncode options



-- | The maximum number of results to return in one API call. If left empty, this will default to 50.
newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



-- | The request is missing a required parameter. Ensure that you have supplied all the required parameters for the request.
newtype MissingRequiredParameterException = MissingRequiredParameterException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeMissingRequiredParameterException :: Newtype MissingRequiredParameterException _
derive instance repGenericMissingRequiredParameterException :: Generic MissingRequiredParameterException _
instance showMissingRequiredParameterException :: Show MissingRequiredParameterException where show = genericShow
instance decodeMissingRequiredParameterException :: Decode MissingRequiredParameterException where decode = genericDecode options
instance encodeMissingRequiredParameterException :: Encode MissingRequiredParameterException where encode = genericEncode options

-- | Constructs MissingRequiredParameterException from required parameters
newMissingRequiredParameterException :: MissingRequiredParameterException
newMissingRequiredParameterException  = MissingRequiredParameterException { "message": Nothing }

-- | Constructs MissingRequiredParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMissingRequiredParameterException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> MissingRequiredParameterException
newMissingRequiredParameterException'  customize = (MissingRequiredParameterException <<< customize) { "message": Nothing }



-- | Pagination token to pass as input to API call
newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | No connectors are available to handle this request. Please associate connector(s) and verify any existing connectors are healthy and can respond to requests.
newtype NoConnectorsAvailableException = NoConnectorsAvailableException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoConnectorsAvailableException :: Newtype NoConnectorsAvailableException _
derive instance repGenericNoConnectorsAvailableException :: Generic NoConnectorsAvailableException _
instance showNoConnectorsAvailableException :: Show NoConnectorsAvailableException where show = genericShow
instance decodeNoConnectorsAvailableException :: Decode NoConnectorsAvailableException where decode = genericDecode options
instance encodeNoConnectorsAvailableException :: Encode NoConnectorsAvailableException where encode = genericEncode options

-- | Constructs NoConnectorsAvailableException from required parameters
newNoConnectorsAvailableException :: NoConnectorsAvailableException
newNoConnectorsAvailableException  = NoConnectorsAvailableException { "message": Nothing }

-- | Constructs NoConnectorsAvailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoConnectorsAvailableException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoConnectorsAvailableException
newNoConnectorsAvailableException'  customize = (NoConnectorsAvailableException <<< customize) { "message": Nothing }



-- | The specified operation is not allowed. This error can occur for a number of reasons; for example, you might be trying to start a Replication Run before seed Replication Run.
newtype OperationNotPermittedException = OperationNotPermittedException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeOperationNotPermittedException :: Newtype OperationNotPermittedException _
derive instance repGenericOperationNotPermittedException :: Generic OperationNotPermittedException _
instance showOperationNotPermittedException :: Show OperationNotPermittedException where show = genericShow
instance decodeOperationNotPermittedException :: Decode OperationNotPermittedException where decode = genericDecode options
instance encodeOperationNotPermittedException :: Encode OperationNotPermittedException where encode = genericEncode options

-- | Constructs OperationNotPermittedException from required parameters
newOperationNotPermittedException :: OperationNotPermittedException
newOperationNotPermittedException  = OperationNotPermittedException { "message": Nothing }

-- | Constructs OperationNotPermittedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationNotPermittedException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> OperationNotPermittedException
newOperationNotPermittedException'  customize = (OperationNotPermittedException <<< customize) { "message": Nothing }



-- | Object representing a Replication Job
newtype ReplicationJob = ReplicationJob 
  { "replicationJobId" :: Maybe (ReplicationJobId)
  , "serverId" :: Maybe (ServerId)
  , "serverType" :: Maybe (ServerType)
  , "vmServer" :: Maybe (VmServer)
  , "seedReplicationTime" :: Maybe (Types.Timestamp)
  , "frequency" :: Maybe (Frequency)
  , "nextReplicationRunStartTime" :: Maybe (Types.Timestamp)
  , "licenseType" :: Maybe (LicenseType)
  , "roleName" :: Maybe (RoleName)
  , "latestAmiId" :: Maybe (AmiId)
  , "state" :: Maybe (ReplicationJobState)
  , "statusMessage" :: Maybe (ReplicationJobStatusMessage)
  , "description" :: Maybe (Description)
  , "replicationRunList" :: Maybe (ReplicationRunList)
  }
derive instance newtypeReplicationJob :: Newtype ReplicationJob _
derive instance repGenericReplicationJob :: Generic ReplicationJob _
instance showReplicationJob :: Show ReplicationJob where show = genericShow
instance decodeReplicationJob :: Decode ReplicationJob where decode = genericDecode options
instance encodeReplicationJob :: Encode ReplicationJob where encode = genericEncode options

-- | Constructs ReplicationJob from required parameters
newReplicationJob :: ReplicationJob
newReplicationJob  = ReplicationJob { "description": Nothing, "frequency": Nothing, "latestAmiId": Nothing, "licenseType": Nothing, "nextReplicationRunStartTime": Nothing, "replicationJobId": Nothing, "replicationRunList": Nothing, "roleName": Nothing, "seedReplicationTime": Nothing, "serverId": Nothing, "serverType": Nothing, "state": Nothing, "statusMessage": Nothing, "vmServer": Nothing }

-- | Constructs ReplicationJob's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReplicationJob' :: ( { "replicationJobId" :: Maybe (ReplicationJobId) , "serverId" :: Maybe (ServerId) , "serverType" :: Maybe (ServerType) , "vmServer" :: Maybe (VmServer) , "seedReplicationTime" :: Maybe (Types.Timestamp) , "frequency" :: Maybe (Frequency) , "nextReplicationRunStartTime" :: Maybe (Types.Timestamp) , "licenseType" :: Maybe (LicenseType) , "roleName" :: Maybe (RoleName) , "latestAmiId" :: Maybe (AmiId) , "state" :: Maybe (ReplicationJobState) , "statusMessage" :: Maybe (ReplicationJobStatusMessage) , "description" :: Maybe (Description) , "replicationRunList" :: Maybe (ReplicationRunList) } -> {"replicationJobId" :: Maybe (ReplicationJobId) , "serverId" :: Maybe (ServerId) , "serverType" :: Maybe (ServerType) , "vmServer" :: Maybe (VmServer) , "seedReplicationTime" :: Maybe (Types.Timestamp) , "frequency" :: Maybe (Frequency) , "nextReplicationRunStartTime" :: Maybe (Types.Timestamp) , "licenseType" :: Maybe (LicenseType) , "roleName" :: Maybe (RoleName) , "latestAmiId" :: Maybe (AmiId) , "state" :: Maybe (ReplicationJobState) , "statusMessage" :: Maybe (ReplicationJobStatusMessage) , "description" :: Maybe (Description) , "replicationRunList" :: Maybe (ReplicationRunList) } ) -> ReplicationJob
newReplicationJob'  customize = (ReplicationJob <<< customize) { "description": Nothing, "frequency": Nothing, "latestAmiId": Nothing, "licenseType": Nothing, "nextReplicationRunStartTime": Nothing, "replicationJobId": Nothing, "replicationRunList": Nothing, "roleName": Nothing, "seedReplicationTime": Nothing, "serverId": Nothing, "serverType": Nothing, "state": Nothing, "statusMessage": Nothing, "vmServer": Nothing }



-- | An active Replication Job already exists for the specified server.
newtype ReplicationJobAlreadyExistsException = ReplicationJobAlreadyExistsException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeReplicationJobAlreadyExistsException :: Newtype ReplicationJobAlreadyExistsException _
derive instance repGenericReplicationJobAlreadyExistsException :: Generic ReplicationJobAlreadyExistsException _
instance showReplicationJobAlreadyExistsException :: Show ReplicationJobAlreadyExistsException where show = genericShow
instance decodeReplicationJobAlreadyExistsException :: Decode ReplicationJobAlreadyExistsException where decode = genericDecode options
instance encodeReplicationJobAlreadyExistsException :: Encode ReplicationJobAlreadyExistsException where encode = genericEncode options

-- | Constructs ReplicationJobAlreadyExistsException from required parameters
newReplicationJobAlreadyExistsException :: ReplicationJobAlreadyExistsException
newReplicationJobAlreadyExistsException  = ReplicationJobAlreadyExistsException { "message": Nothing }

-- | Constructs ReplicationJobAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReplicationJobAlreadyExistsException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ReplicationJobAlreadyExistsException
newReplicationJobAlreadyExistsException'  customize = (ReplicationJobAlreadyExistsException <<< customize) { "message": Nothing }



-- | The unique identifier for a Replication Job.
newtype ReplicationJobId = ReplicationJobId String
derive instance newtypeReplicationJobId :: Newtype ReplicationJobId _
derive instance repGenericReplicationJobId :: Generic ReplicationJobId _
instance showReplicationJobId :: Show ReplicationJobId where show = genericShow
instance decodeReplicationJobId :: Decode ReplicationJobId where decode = genericDecode options
instance encodeReplicationJobId :: Encode ReplicationJobId where encode = genericEncode options



-- | List of Replication Jobs
newtype ReplicationJobList = ReplicationJobList (Array ReplicationJob)
derive instance newtypeReplicationJobList :: Newtype ReplicationJobList _
derive instance repGenericReplicationJobList :: Generic ReplicationJobList _
instance showReplicationJobList :: Show ReplicationJobList where show = genericShow
instance decodeReplicationJobList :: Decode ReplicationJobList where decode = genericDecode options
instance encodeReplicationJobList :: Encode ReplicationJobList where encode = genericEncode options



-- | The specified Replication Job cannot be found.
newtype ReplicationJobNotFoundException = ReplicationJobNotFoundException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeReplicationJobNotFoundException :: Newtype ReplicationJobNotFoundException _
derive instance repGenericReplicationJobNotFoundException :: Generic ReplicationJobNotFoundException _
instance showReplicationJobNotFoundException :: Show ReplicationJobNotFoundException where show = genericShow
instance decodeReplicationJobNotFoundException :: Decode ReplicationJobNotFoundException where decode = genericDecode options
instance encodeReplicationJobNotFoundException :: Encode ReplicationJobNotFoundException where encode = genericEncode options

-- | Constructs ReplicationJobNotFoundException from required parameters
newReplicationJobNotFoundException :: ReplicationJobNotFoundException
newReplicationJobNotFoundException  = ReplicationJobNotFoundException { "message": Nothing }

-- | Constructs ReplicationJobNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReplicationJobNotFoundException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ReplicationJobNotFoundException
newReplicationJobNotFoundException'  customize = (ReplicationJobNotFoundException <<< customize) { "message": Nothing }



-- | Current state of Replication Job
newtype ReplicationJobState = ReplicationJobState String
derive instance newtypeReplicationJobState :: Newtype ReplicationJobState _
derive instance repGenericReplicationJobState :: Generic ReplicationJobState _
instance showReplicationJobState :: Show ReplicationJobState where show = genericShow
instance decodeReplicationJobState :: Decode ReplicationJobState where decode = genericDecode options
instance encodeReplicationJobState :: Encode ReplicationJobState where encode = genericEncode options



-- | String describing current status of Replication Job
newtype ReplicationJobStatusMessage = ReplicationJobStatusMessage String
derive instance newtypeReplicationJobStatusMessage :: Newtype ReplicationJobStatusMessage _
derive instance repGenericReplicationJobStatusMessage :: Generic ReplicationJobStatusMessage _
instance showReplicationJobStatusMessage :: Show ReplicationJobStatusMessage where show = genericShow
instance decodeReplicationJobStatusMessage :: Decode ReplicationJobStatusMessage where decode = genericDecode options
instance encodeReplicationJobStatusMessage :: Encode ReplicationJobStatusMessage where encode = genericEncode options



-- | An indicator of the Replication Job being deleted or failed.
newtype ReplicationJobTerminated = ReplicationJobTerminated Boolean
derive instance newtypeReplicationJobTerminated :: Newtype ReplicationJobTerminated _
derive instance repGenericReplicationJobTerminated :: Generic ReplicationJobTerminated _
instance showReplicationJobTerminated :: Show ReplicationJobTerminated where show = genericShow
instance decodeReplicationJobTerminated :: Decode ReplicationJobTerminated where decode = genericDecode options
instance encodeReplicationJobTerminated :: Encode ReplicationJobTerminated where encode = genericEncode options



-- | Object representing a Replication Run
newtype ReplicationRun = ReplicationRun 
  { "replicationRunId" :: Maybe (ReplicationRunId)
  , "state" :: Maybe (ReplicationRunState)
  , "type" :: Maybe (ReplicationRunType)
  , "statusMessage" :: Maybe (ReplicationRunStatusMessage)
  , "amiId" :: Maybe (AmiId)
  , "scheduledStartTime" :: Maybe (Types.Timestamp)
  , "completedTime" :: Maybe (Types.Timestamp)
  , "description" :: Maybe (Description)
  }
derive instance newtypeReplicationRun :: Newtype ReplicationRun _
derive instance repGenericReplicationRun :: Generic ReplicationRun _
instance showReplicationRun :: Show ReplicationRun where show = genericShow
instance decodeReplicationRun :: Decode ReplicationRun where decode = genericDecode options
instance encodeReplicationRun :: Encode ReplicationRun where encode = genericEncode options

-- | Constructs ReplicationRun from required parameters
newReplicationRun :: ReplicationRun
newReplicationRun  = ReplicationRun { "amiId": Nothing, "completedTime": Nothing, "description": Nothing, "replicationRunId": Nothing, "scheduledStartTime": Nothing, "state": Nothing, "statusMessage": Nothing, "type": Nothing }

-- | Constructs ReplicationRun's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReplicationRun' :: ( { "replicationRunId" :: Maybe (ReplicationRunId) , "state" :: Maybe (ReplicationRunState) , "type" :: Maybe (ReplicationRunType) , "statusMessage" :: Maybe (ReplicationRunStatusMessage) , "amiId" :: Maybe (AmiId) , "scheduledStartTime" :: Maybe (Types.Timestamp) , "completedTime" :: Maybe (Types.Timestamp) , "description" :: Maybe (Description) } -> {"replicationRunId" :: Maybe (ReplicationRunId) , "state" :: Maybe (ReplicationRunState) , "type" :: Maybe (ReplicationRunType) , "statusMessage" :: Maybe (ReplicationRunStatusMessage) , "amiId" :: Maybe (AmiId) , "scheduledStartTime" :: Maybe (Types.Timestamp) , "completedTime" :: Maybe (Types.Timestamp) , "description" :: Maybe (Description) } ) -> ReplicationRun
newReplicationRun'  customize = (ReplicationRun <<< customize) { "amiId": Nothing, "completedTime": Nothing, "description": Nothing, "replicationRunId": Nothing, "scheduledStartTime": Nothing, "state": Nothing, "statusMessage": Nothing, "type": Nothing }



-- | The unique identifier for a Replication Run.
newtype ReplicationRunId = ReplicationRunId String
derive instance newtypeReplicationRunId :: Newtype ReplicationRunId _
derive instance repGenericReplicationRunId :: Generic ReplicationRunId _
instance showReplicationRunId :: Show ReplicationRunId where show = genericShow
instance decodeReplicationRunId :: Decode ReplicationRunId where decode = genericDecode options
instance encodeReplicationRunId :: Encode ReplicationRunId where encode = genericEncode options



-- | This user has exceeded the maximum allowed Replication Run limit.
newtype ReplicationRunLimitExceededException = ReplicationRunLimitExceededException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeReplicationRunLimitExceededException :: Newtype ReplicationRunLimitExceededException _
derive instance repGenericReplicationRunLimitExceededException :: Generic ReplicationRunLimitExceededException _
instance showReplicationRunLimitExceededException :: Show ReplicationRunLimitExceededException where show = genericShow
instance decodeReplicationRunLimitExceededException :: Decode ReplicationRunLimitExceededException where decode = genericDecode options
instance encodeReplicationRunLimitExceededException :: Encode ReplicationRunLimitExceededException where encode = genericEncode options

-- | Constructs ReplicationRunLimitExceededException from required parameters
newReplicationRunLimitExceededException :: ReplicationRunLimitExceededException
newReplicationRunLimitExceededException  = ReplicationRunLimitExceededException { "message": Nothing }

-- | Constructs ReplicationRunLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReplicationRunLimitExceededException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ReplicationRunLimitExceededException
newReplicationRunLimitExceededException'  customize = (ReplicationRunLimitExceededException <<< customize) { "message": Nothing }



-- | List of Replication Runs
newtype ReplicationRunList = ReplicationRunList (Array ReplicationRun)
derive instance newtypeReplicationRunList :: Newtype ReplicationRunList _
derive instance repGenericReplicationRunList :: Generic ReplicationRunList _
instance showReplicationRunList :: Show ReplicationRunList where show = genericShow
instance decodeReplicationRunList :: Decode ReplicationRunList where decode = genericDecode options
instance encodeReplicationRunList :: Encode ReplicationRunList where encode = genericEncode options



-- | Current state of Replication Run
newtype ReplicationRunState = ReplicationRunState String
derive instance newtypeReplicationRunState :: Newtype ReplicationRunState _
derive instance repGenericReplicationRunState :: Generic ReplicationRunState _
instance showReplicationRunState :: Show ReplicationRunState where show = genericShow
instance decodeReplicationRunState :: Decode ReplicationRunState where decode = genericDecode options
instance encodeReplicationRunState :: Encode ReplicationRunState where encode = genericEncode options



-- | String describing current status of Replication Run
newtype ReplicationRunStatusMessage = ReplicationRunStatusMessage String
derive instance newtypeReplicationRunStatusMessage :: Newtype ReplicationRunStatusMessage _
derive instance repGenericReplicationRunStatusMessage :: Generic ReplicationRunStatusMessage _
instance showReplicationRunStatusMessage :: Show ReplicationRunStatusMessage where show = genericShow
instance decodeReplicationRunStatusMessage :: Decode ReplicationRunStatusMessage where decode = genericDecode options
instance encodeReplicationRunStatusMessage :: Encode ReplicationRunStatusMessage where encode = genericEncode options



-- | Type of Replication Run
newtype ReplicationRunType = ReplicationRunType String
derive instance newtypeReplicationRunType :: Newtype ReplicationRunType _
derive instance repGenericReplicationRunType :: Generic ReplicationRunType _
instance showReplicationRunType :: Show ReplicationRunType where show = genericShow
instance decodeReplicationRunType :: Decode ReplicationRunType where decode = genericDecode options
instance encodeReplicationRunType :: Encode ReplicationRunType where encode = genericEncode options



-- | Name of service role in customer's account to be used by SMS service.
newtype RoleName = RoleName String
derive instance newtypeRoleName :: Newtype RoleName _
derive instance repGenericRoleName :: Generic RoleName _
instance showRoleName :: Show RoleName where show = genericShow
instance decodeRoleName :: Decode RoleName where decode = genericDecode options
instance encodeRoleName :: Encode RoleName where encode = genericEncode options



-- | Object representing a server
newtype Server = Server 
  { "serverId" :: Maybe (ServerId)
  , "serverType" :: Maybe (ServerType)
  , "vmServer" :: Maybe (VmServer)
  , "replicationJobId" :: Maybe (ReplicationJobId)
  , "replicationJobTerminated" :: Maybe (ReplicationJobTerminated)
  }
derive instance newtypeServer :: Newtype Server _
derive instance repGenericServer :: Generic Server _
instance showServer :: Show Server where show = genericShow
instance decodeServer :: Decode Server where decode = genericDecode options
instance encodeServer :: Encode Server where encode = genericEncode options

-- | Constructs Server from required parameters
newServer :: Server
newServer  = Server { "replicationJobId": Nothing, "replicationJobTerminated": Nothing, "serverId": Nothing, "serverType": Nothing, "vmServer": Nothing }

-- | Constructs Server's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServer' :: ( { "serverId" :: Maybe (ServerId) , "serverType" :: Maybe (ServerType) , "vmServer" :: Maybe (VmServer) , "replicationJobId" :: Maybe (ReplicationJobId) , "replicationJobTerminated" :: Maybe (ReplicationJobTerminated) } -> {"serverId" :: Maybe (ServerId) , "serverType" :: Maybe (ServerType) , "vmServer" :: Maybe (VmServer) , "replicationJobId" :: Maybe (ReplicationJobId) , "replicationJobTerminated" :: Maybe (ReplicationJobTerminated) } ) -> Server
newServer'  customize = (Server <<< customize) { "replicationJobId": Nothing, "replicationJobTerminated": Nothing, "serverId": Nothing, "serverType": Nothing, "vmServer": Nothing }



-- | The provided server cannot be replicated.
newtype ServerCannotBeReplicatedException = ServerCannotBeReplicatedException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeServerCannotBeReplicatedException :: Newtype ServerCannotBeReplicatedException _
derive instance repGenericServerCannotBeReplicatedException :: Generic ServerCannotBeReplicatedException _
instance showServerCannotBeReplicatedException :: Show ServerCannotBeReplicatedException where show = genericShow
instance decodeServerCannotBeReplicatedException :: Decode ServerCannotBeReplicatedException where decode = genericDecode options
instance encodeServerCannotBeReplicatedException :: Encode ServerCannotBeReplicatedException where encode = genericEncode options

-- | Constructs ServerCannotBeReplicatedException from required parameters
newServerCannotBeReplicatedException :: ServerCannotBeReplicatedException
newServerCannotBeReplicatedException  = ServerCannotBeReplicatedException { "message": Nothing }

-- | Constructs ServerCannotBeReplicatedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerCannotBeReplicatedException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ServerCannotBeReplicatedException
newServerCannotBeReplicatedException'  customize = (ServerCannotBeReplicatedException <<< customize) { "message": Nothing }



-- | Status of Server catalog
newtype ServerCatalogStatus = ServerCatalogStatus String
derive instance newtypeServerCatalogStatus :: Newtype ServerCatalogStatus _
derive instance repGenericServerCatalogStatus :: Generic ServerCatalogStatus _
instance showServerCatalogStatus :: Show ServerCatalogStatus where show = genericShow
instance decodeServerCatalogStatus :: Decode ServerCatalogStatus where decode = genericDecode options
instance encodeServerCatalogStatus :: Encode ServerCatalogStatus where encode = genericEncode options



-- | Unique Identifier for a server
newtype ServerId = ServerId String
derive instance newtypeServerId :: Newtype ServerId _
derive instance repGenericServerId :: Generic ServerId _
instance showServerId :: Show ServerId where show = genericShow
instance decodeServerId :: Decode ServerId where decode = genericDecode options
instance encodeServerId :: Encode ServerId where encode = genericEncode options



-- | List of servers from catalog
newtype ServerList = ServerList (Array Server)
derive instance newtypeServerList :: Newtype ServerList _
derive instance repGenericServerList :: Generic ServerList _
instance showServerList :: Show ServerList where show = genericShow
instance decodeServerList :: Decode ServerList where decode = genericDecode options
instance encodeServerList :: Encode ServerList where encode = genericEncode options



-- | Type of server.
newtype ServerType = ServerType String
derive instance newtypeServerType :: Newtype ServerType _
derive instance repGenericServerType :: Generic ServerType _
instance showServerType :: Show ServerType where show = genericShow
instance decodeServerType :: Decode ServerType where decode = genericDecode options
instance encodeServerType :: Encode ServerType where encode = genericEncode options



newtype StartOnDemandReplicationRunRequest = StartOnDemandReplicationRunRequest 
  { "replicationJobId" :: (ReplicationJobId)
  , "description" :: Maybe (Description)
  }
derive instance newtypeStartOnDemandReplicationRunRequest :: Newtype StartOnDemandReplicationRunRequest _
derive instance repGenericStartOnDemandReplicationRunRequest :: Generic StartOnDemandReplicationRunRequest _
instance showStartOnDemandReplicationRunRequest :: Show StartOnDemandReplicationRunRequest where show = genericShow
instance decodeStartOnDemandReplicationRunRequest :: Decode StartOnDemandReplicationRunRequest where decode = genericDecode options
instance encodeStartOnDemandReplicationRunRequest :: Encode StartOnDemandReplicationRunRequest where encode = genericEncode options

-- | Constructs StartOnDemandReplicationRunRequest from required parameters
newStartOnDemandReplicationRunRequest :: ReplicationJobId -> StartOnDemandReplicationRunRequest
newStartOnDemandReplicationRunRequest _replicationJobId = StartOnDemandReplicationRunRequest { "replicationJobId": _replicationJobId, "description": Nothing }

-- | Constructs StartOnDemandReplicationRunRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartOnDemandReplicationRunRequest' :: ReplicationJobId -> ( { "replicationJobId" :: (ReplicationJobId) , "description" :: Maybe (Description) } -> {"replicationJobId" :: (ReplicationJobId) , "description" :: Maybe (Description) } ) -> StartOnDemandReplicationRunRequest
newStartOnDemandReplicationRunRequest' _replicationJobId customize = (StartOnDemandReplicationRunRequest <<< customize) { "replicationJobId": _replicationJobId, "description": Nothing }



newtype StartOnDemandReplicationRunResponse = StartOnDemandReplicationRunResponse 
  { "replicationRunId" :: Maybe (ReplicationRunId)
  }
derive instance newtypeStartOnDemandReplicationRunResponse :: Newtype StartOnDemandReplicationRunResponse _
derive instance repGenericStartOnDemandReplicationRunResponse :: Generic StartOnDemandReplicationRunResponse _
instance showStartOnDemandReplicationRunResponse :: Show StartOnDemandReplicationRunResponse where show = genericShow
instance decodeStartOnDemandReplicationRunResponse :: Decode StartOnDemandReplicationRunResponse where decode = genericDecode options
instance encodeStartOnDemandReplicationRunResponse :: Encode StartOnDemandReplicationRunResponse where encode = genericEncode options

-- | Constructs StartOnDemandReplicationRunResponse from required parameters
newStartOnDemandReplicationRunResponse :: StartOnDemandReplicationRunResponse
newStartOnDemandReplicationRunResponse  = StartOnDemandReplicationRunResponse { "replicationRunId": Nothing }

-- | Constructs StartOnDemandReplicationRunResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartOnDemandReplicationRunResponse' :: ( { "replicationRunId" :: Maybe (ReplicationRunId) } -> {"replicationRunId" :: Maybe (ReplicationRunId) } ) -> StartOnDemandReplicationRunResponse
newStartOnDemandReplicationRunResponse'  customize = (StartOnDemandReplicationRunResponse <<< customize) { "replicationRunId": Nothing }



-- | This user does not have permissions to perform this operation.
newtype UnauthorizedOperationException = UnauthorizedOperationException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeUnauthorizedOperationException :: Newtype UnauthorizedOperationException _
derive instance repGenericUnauthorizedOperationException :: Generic UnauthorizedOperationException _
instance showUnauthorizedOperationException :: Show UnauthorizedOperationException where show = genericShow
instance decodeUnauthorizedOperationException :: Decode UnauthorizedOperationException where decode = genericDecode options
instance encodeUnauthorizedOperationException :: Encode UnauthorizedOperationException where encode = genericEncode options

-- | Constructs UnauthorizedOperationException from required parameters
newUnauthorizedOperationException :: UnauthorizedOperationException
newUnauthorizedOperationException  = UnauthorizedOperationException { "message": Nothing }

-- | Constructs UnauthorizedOperationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnauthorizedOperationException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> UnauthorizedOperationException
newUnauthorizedOperationException'  customize = (UnauthorizedOperationException <<< customize) { "message": Nothing }



newtype UpdateReplicationJobRequest = UpdateReplicationJobRequest 
  { "replicationJobId" :: (ReplicationJobId)
  , "frequency" :: Maybe (Frequency)
  , "nextReplicationRunStartTime" :: Maybe (Types.Timestamp)
  , "licenseType" :: Maybe (LicenseType)
  , "roleName" :: Maybe (RoleName)
  , "description" :: Maybe (Description)
  }
derive instance newtypeUpdateReplicationJobRequest :: Newtype UpdateReplicationJobRequest _
derive instance repGenericUpdateReplicationJobRequest :: Generic UpdateReplicationJobRequest _
instance showUpdateReplicationJobRequest :: Show UpdateReplicationJobRequest where show = genericShow
instance decodeUpdateReplicationJobRequest :: Decode UpdateReplicationJobRequest where decode = genericDecode options
instance encodeUpdateReplicationJobRequest :: Encode UpdateReplicationJobRequest where encode = genericEncode options

-- | Constructs UpdateReplicationJobRequest from required parameters
newUpdateReplicationJobRequest :: ReplicationJobId -> UpdateReplicationJobRequest
newUpdateReplicationJobRequest _replicationJobId = UpdateReplicationJobRequest { "replicationJobId": _replicationJobId, "description": Nothing, "frequency": Nothing, "licenseType": Nothing, "nextReplicationRunStartTime": Nothing, "roleName": Nothing }

-- | Constructs UpdateReplicationJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateReplicationJobRequest' :: ReplicationJobId -> ( { "replicationJobId" :: (ReplicationJobId) , "frequency" :: Maybe (Frequency) , "nextReplicationRunStartTime" :: Maybe (Types.Timestamp) , "licenseType" :: Maybe (LicenseType) , "roleName" :: Maybe (RoleName) , "description" :: Maybe (Description) } -> {"replicationJobId" :: (ReplicationJobId) , "frequency" :: Maybe (Frequency) , "nextReplicationRunStartTime" :: Maybe (Types.Timestamp) , "licenseType" :: Maybe (LicenseType) , "roleName" :: Maybe (RoleName) , "description" :: Maybe (Description) } ) -> UpdateReplicationJobRequest
newUpdateReplicationJobRequest' _replicationJobId customize = (UpdateReplicationJobRequest <<< customize) { "replicationJobId": _replicationJobId, "description": Nothing, "frequency": Nothing, "licenseType": Nothing, "nextReplicationRunStartTime": Nothing, "roleName": Nothing }



newtype UpdateReplicationJobResponse = UpdateReplicationJobResponse Types.NoArguments
derive instance newtypeUpdateReplicationJobResponse :: Newtype UpdateReplicationJobResponse _
derive instance repGenericUpdateReplicationJobResponse :: Generic UpdateReplicationJobResponse _
instance showUpdateReplicationJobResponse :: Show UpdateReplicationJobResponse where show = genericShow
instance decodeUpdateReplicationJobResponse :: Decode UpdateReplicationJobResponse where decode = genericDecode options
instance encodeUpdateReplicationJobResponse :: Encode UpdateReplicationJobResponse where encode = genericEncode options



-- | Unique Identifier for a VM
newtype VmId = VmId String
derive instance newtypeVmId :: Newtype VmId _
derive instance repGenericVmId :: Generic VmId _
instance showVmId :: Show VmId where show = genericShow
instance decodeVmId :: Decode VmId where decode = genericDecode options
instance encodeVmId :: Encode VmId where encode = genericEncode options



-- | Unique Identifier for VM Manager
newtype VmManagerId = VmManagerId String
derive instance newtypeVmManagerId :: Newtype VmManagerId _
derive instance repGenericVmManagerId :: Generic VmManagerId _
instance showVmManagerId :: Show VmManagerId where show = genericShow
instance decodeVmManagerId :: Decode VmManagerId where decode = genericDecode options
instance encodeVmManagerId :: Encode VmManagerId where encode = genericEncode options



-- | VM Manager Name
newtype VmManagerName = VmManagerName String
derive instance newtypeVmManagerName :: Newtype VmManagerName _
derive instance repGenericVmManagerName :: Generic VmManagerName _
instance showVmManagerName :: Show VmManagerName where show = genericShow
instance decodeVmManagerName :: Decode VmManagerName where decode = genericDecode options
instance encodeVmManagerName :: Encode VmManagerName where encode = genericEncode options



-- | VM Management Product
newtype VmManagerType = VmManagerType String
derive instance newtypeVmManagerType :: Newtype VmManagerType _
derive instance repGenericVmManagerType :: Generic VmManagerType _
instance showVmManagerType :: Show VmManagerType where show = genericShow
instance decodeVmManagerType :: Decode VmManagerType where decode = genericDecode options
instance encodeVmManagerType :: Encode VmManagerType where encode = genericEncode options



-- | Name of Virtual Machine
newtype VmName = VmName String
derive instance newtypeVmName :: Newtype VmName _
derive instance repGenericVmName :: Generic VmName _
instance showVmName :: Show VmName where show = genericShow
instance decodeVmName :: Decode VmName where decode = genericDecode options
instance encodeVmName :: Encode VmName where encode = genericEncode options



-- | Path to VM
newtype VmPath = VmPath String
derive instance newtypeVmPath :: Newtype VmPath _
derive instance repGenericVmPath :: Generic VmPath _
instance showVmPath :: Show VmPath where show = genericShow
instance decodeVmPath :: Decode VmPath where decode = genericDecode options
instance encodeVmPath :: Encode VmPath where encode = genericEncode options



-- | Object representing a VM server
newtype VmServer = VmServer 
  { "vmServerAddress" :: Maybe (VmServerAddress)
  , "vmName" :: Maybe (VmName)
  , "vmManagerName" :: Maybe (VmManagerName)
  , "vmManagerType" :: Maybe (VmManagerType)
  , "vmPath" :: Maybe (VmPath)
  }
derive instance newtypeVmServer :: Newtype VmServer _
derive instance repGenericVmServer :: Generic VmServer _
instance showVmServer :: Show VmServer where show = genericShow
instance decodeVmServer :: Decode VmServer where decode = genericDecode options
instance encodeVmServer :: Encode VmServer where encode = genericEncode options

-- | Constructs VmServer from required parameters
newVmServer :: VmServer
newVmServer  = VmServer { "vmManagerName": Nothing, "vmManagerType": Nothing, "vmName": Nothing, "vmPath": Nothing, "vmServerAddress": Nothing }

-- | Constructs VmServer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVmServer' :: ( { "vmServerAddress" :: Maybe (VmServerAddress) , "vmName" :: Maybe (VmName) , "vmManagerName" :: Maybe (VmManagerName) , "vmManagerType" :: Maybe (VmManagerType) , "vmPath" :: Maybe (VmPath) } -> {"vmServerAddress" :: Maybe (VmServerAddress) , "vmName" :: Maybe (VmName) , "vmManagerName" :: Maybe (VmManagerName) , "vmManagerType" :: Maybe (VmManagerType) , "vmPath" :: Maybe (VmPath) } ) -> VmServer
newVmServer'  customize = (VmServer <<< customize) { "vmManagerName": Nothing, "vmManagerType": Nothing, "vmName": Nothing, "vmPath": Nothing, "vmServerAddress": Nothing }



-- | Object representing a server's location
newtype VmServerAddress = VmServerAddress 
  { "vmManagerId" :: Maybe (VmManagerId)
  , "vmId" :: Maybe (VmId)
  }
derive instance newtypeVmServerAddress :: Newtype VmServerAddress _
derive instance repGenericVmServerAddress :: Generic VmServerAddress _
instance showVmServerAddress :: Show VmServerAddress where show = genericShow
instance decodeVmServerAddress :: Decode VmServerAddress where decode = genericDecode options
instance encodeVmServerAddress :: Encode VmServerAddress where encode = genericEncode options

-- | Constructs VmServerAddress from required parameters
newVmServerAddress :: VmServerAddress
newVmServerAddress  = VmServerAddress { "vmId": Nothing, "vmManagerId": Nothing }

-- | Constructs VmServerAddress's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVmServerAddress' :: ( { "vmManagerId" :: Maybe (VmManagerId) , "vmId" :: Maybe (VmId) } -> {"vmManagerId" :: Maybe (VmManagerId) , "vmId" :: Maybe (VmId) } ) -> VmServerAddress
newVmServerAddress'  customize = (VmServerAddress <<< customize) { "vmId": Nothing, "vmManagerId": Nothing }

