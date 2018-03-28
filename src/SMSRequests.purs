
module AWS.SMS.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.SMS as SMS
import AWS.SMS.Types as SMSTypes


-- | The CreateReplicationJob API is used to create a ReplicationJob to replicate a server on AWS. Call this API to first create a ReplicationJob, which will then schedule periodic ReplicationRuns to replicate your server to AWS. Each ReplicationRun will result in the creation of an AWS AMI.
createReplicationJob :: forall eff. SMS.Service -> SMSTypes.CreateReplicationJobRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.CreateReplicationJobResponse
createReplicationJob (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createReplicationJob"


-- | The DeleteReplicationJob API is used to delete a ReplicationJob, resulting in no further ReplicationRuns. This will delete the contents of the S3 bucket used to store SMS artifacts, but will not delete any AMIs created by the SMS service.
deleteReplicationJob :: forall eff. SMS.Service -> SMSTypes.DeleteReplicationJobRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.DeleteReplicationJobResponse
deleteReplicationJob (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteReplicationJob"


-- | The DeleteServerCatalog API clears all servers from your server catalog. This means that these servers will no longer be accessible to the Server Migration Service.
deleteServerCatalog :: forall eff. SMS.Service -> SMSTypes.DeleteServerCatalogRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.DeleteServerCatalogResponse
deleteServerCatalog (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteServerCatalog"


-- | The DisassociateConnector API will disassociate a connector from the Server Migration Service, rendering it unavailable to support replication jobs.
disassociateConnector :: forall eff. SMS.Service -> SMSTypes.DisassociateConnectorRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.DisassociateConnectorResponse
disassociateConnector (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateConnector"


-- | The GetConnectors API returns a list of connectors that are registered with the Server Migration Service.
getConnectors :: forall eff. SMS.Service -> SMSTypes.GetConnectorsRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.GetConnectorsResponse
getConnectors (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getConnectors"


-- | The GetReplicationJobs API will return all of your ReplicationJobs and their details. This API returns a paginated list, that may be consecutively called with nextToken to retrieve all ReplicationJobs.
getReplicationJobs :: forall eff. SMS.Service -> SMSTypes.GetReplicationJobsRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.GetReplicationJobsResponse
getReplicationJobs (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getReplicationJobs"


-- | The GetReplicationRuns API will return all ReplicationRuns for a given ReplicationJob. This API returns a paginated list, that may be consecutively called with nextToken to retrieve all ReplicationRuns for a ReplicationJob.
getReplicationRuns :: forall eff. SMS.Service -> SMSTypes.GetReplicationRunsRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.GetReplicationRunsResponse
getReplicationRuns (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getReplicationRuns"


-- | The GetServers API returns a list of all servers in your server catalog. For this call to succeed, you must previously have called ImportServerCatalog.
getServers :: forall eff. SMS.Service -> SMSTypes.GetServersRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.GetServersResponse
getServers (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getServers"


-- | The ImportServerCatalog API is used to gather the complete list of on-premises servers on your premises. This API call requires connectors to be installed and monitoring all servers you would like imported. This API call returns immediately, but may take some time to retrieve all of the servers.
importServerCatalog :: forall eff. SMS.Service -> SMSTypes.ImportServerCatalogRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.ImportServerCatalogResponse
importServerCatalog (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "importServerCatalog"


-- | The StartOnDemandReplicationRun API is used to start a ReplicationRun on demand (in addition to those that are scheduled based on your frequency). This ReplicationRun will start immediately. StartOnDemandReplicationRun is subject to limits on how many on demand ReplicationRuns you may call per 24-hour period.
startOnDemandReplicationRun :: forall eff. SMS.Service -> SMSTypes.StartOnDemandReplicationRunRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.StartOnDemandReplicationRunResponse
startOnDemandReplicationRun (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startOnDemandReplicationRun"


-- | The UpdateReplicationJob API is used to change the settings of your existing ReplicationJob created using CreateReplicationJob. Calling this API will affect the next scheduled ReplicationRun.
updateReplicationJob :: forall eff. SMS.Service -> SMSTypes.UpdateReplicationJobRequest -> Aff (exception :: EXCEPTION | eff) SMSTypes.UpdateReplicationJobResponse
updateReplicationJob (SMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateReplicationJob"
