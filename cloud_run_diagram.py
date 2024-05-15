from diagrams import Diagram, Cluster
from diagrams.gcp.compute import Run
from diagrams.gcp.devtools import Build
from diagrams.gcp.database import SQL
from diagrams.gcp.storage import GCS
from diagrams.gcp.devtools import ContainerRegistry
from diagrams.gcp.network import VPC
from diagrams.gcp.security import Iam
from diagrams.gcp.operations import Monitoring
from diagrams.gcp.operations import Logging
from diagrams.gcp.analytics import PubSub

with Diagram("Google Cloud Run Architecture", show=False):
    with Cluster("VPC"):
        cloud_run = Run("Cloud Run Service")

        with Cluster("CI/CD"):
            cloud_build = Build("Cloud Build")
            container_registry = ContainerRegistry("Container Registry")

        cloud_sql = SQL("Cloud SQL (PostgreSQL)")
        cloud_storage = GCS("Cloud Storage")
        pubsub = PubSub("Pub/Sub")
        iam = Iam("IAM")
        monitoring = Monitoring("Cloud Monitoring")
        logging = Logging("Cloud Logging")

    cloud_build >> container_registry >> cloud_run
    cloud_run >> cloud_sql
    cloud_run >> cloud_storage
    cloud_run >> pubsub
    iam >> cloud_run
    monitoring >> cloud_run
    logging >> cloud_run
