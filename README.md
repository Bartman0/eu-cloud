# Experimentation for EU-cloud

Our goal is provision a demo project on several EU cloud providers to get insights into their setup, project provisioning experience, and what the costs (setup and running) are when the demo project is up and running.

Our aim is to base the demo project on components that are generally available as OpenStack services. In our opinion, this makes it possible to make the most objective and therefore fair comparison between selected EU cloud providers.

Main subjects of our comparison are:

- Setup: general setup of an account, tenant or project on the OpenStack cloud providers
- Services: completeness of offering, managed or otherwise
- IAM: authentication and authorisation setup
- Repository support: using code and artefact repositories as made available by the providers
- Deployment support: supported deployment tooling (API, Terraform, OpenTofu)
- Runtime: deployment and operational experience (duration of setup, costs, administration, logging, monitoring)

We will explicitly research OpenStack support regarding services, deployment and runtime: what are the possibilities of or limitations in running general OpenStack components and tooling?

## Tooling

Our intention is to use open source tooling exclusively.

Base selection:

- openstack CLI
- opentofu CLI
- git CLI

# Initial setup of this repository

```
cd Projects
uv init --vcs git -p /opt/homebrew/bin/python3.12 eu-cloud
cd eu-cloud
uv venv -p /opt/homebrew/bin/python3.12
source .venv/bin/activate
uv add otcextensions python-openstackclient
```
