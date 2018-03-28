

-- | Amazon Server Migration Service automates the process of migrating servers to EC2.
module AWS.SMS where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Service (Options, Service, ServiceName(..), service) as AWS

newtype Service = Service AWS.Service

service :: forall eff. AWS.Options -> Eff (exception :: EXCEPTION | eff) Service
service options = do
    let serviceName = AWS.ServiceName "SMS"
    service' <- AWS.service serviceName options
    pure $ Service service'
