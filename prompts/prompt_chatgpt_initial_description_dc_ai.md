# Dfind Consulting AI – Wiki Page Creation

### Objective:

Create a comprehensive wiki page detailing the in-house AI solution for Dfind Consulting, incorporating the discussed 
technologies and frameworks. The document should serve as a technical blueprint, a management pitch, and an installation guide.

## Functional Scope:

### The AI should be designed to:
-	Automate Repetitive Tasks: Enable automation of routine administrative tasks.
-	Slack Integration: Allow employees to submit vacation applications via Slack commands, with API integration to Recman (Randstad’s HR system).
-	Workforce Insights: Provide workforce analytics to enhance sales and candidate matching.
-	CV Database Integration: Assist sales teams in identifying the best candidates for projects by analyzing our CV database.
-	Market Intelligence & Skills Development: Assess expertise gaps within the company by comparing CV data with client requests.

### Technical Architecture:
-	LLM: DeepSeek (model size based on available hardware).
-   A simple chat interface for DeepSeek
-	Runtime Environment: WASM.
-	Deployment: Kubernetes cluster to manage DeepSeek instances.
-	Agent Framework: Preferably JVM-based (Java/Kotlin) to align with in-house expertise.
-	Hardware: Self-hosted Ubuntu-based gaming machines with powerful NVIDIA GPUs, located in Oslo.

### Documentation Deliverables:
### Diagrams:
-	Overview of system architecture.
-	Detailed technical stack breakdown.
-	Agent framework and integrations with in-house systems.
#### Installation Guide:
-	Step-by-step deployment instructions.
-	Commands formatted as code.
-	Automated setup options using Bash, Chef, Puppet, Ansible, Terraform, or Attune.
#### Kubernetes Scalability:
-	Adding a node should be as simple as formatting an Ubuntu 24.04 system and executing a script from our GitHub repository (link).
#### Business Case for Management:
-	Justify funding by demonstrating increased efficiency, cost savings, and enhanced employee flexibility.

## 
Research & Resources:

Use the provided links and supplement with additional reliable sources where necessary.

WASM, Kubernetes, DeepSeek - installation etc.
- https://www.digitalocean.com/community/tutorials/how-to-setup-a-microk8s-kubernetes-cluster-on-ubuntu-22-04
- https://microk8s.io/docs/clustering
- https://wasmedge.org/book/en/use_cases/kubernetes.html
- https://wasmedge.org/docs/contribute/plugin/intro
- https://wasmedge.org/docs/develop/deploy/using-wasmedge-in-docker
- https://wasmedge.org/docs/start/install/
- https://wasmedge.org/docs/start/getting-started/quick_start
- https://sysdig.com/learn-cloud-native/what-is-microk8s/
- https://www.brighttalk.com/webcast/6793/481263?utm_source=brighttalk-portal&utm_medium=web&utm_content=microk8s&utm_term=search-result-1&utm_campaign=webcasts-search-results-feed
- https://github.com/superedge/superedge/blob/main/examples/wasmedge/wasmedge.md
- https://www.nops.io/blog/how-to-run-webassembly-on-kubernetes/#
- https://wasmedge.org/docs/develop/deploy/kubernetes/kubernetes-cri-o
- https://github.com/second-state/wasmedge-containers-examples/#
- https://www.secondstate.io/articles/deepseek-topples-openai/
- https://www.secondstate.io/articles/deepseek-r1/
- https://wasmedge.org/docs/start/getting-started/quick_start
- https://wasmedge.org/docs/start/install/
- https://www.secondstate.io/articles/deepseek-r1/

Kubernetes dashboard via microk8s:
- https://microk8s.io/docs/addon-dashboard
- https://askubuntu.com/questions/1123996/how-to-access-micro8kss-dashboard-web-ui
- https://gist.github.com/felipecruz91/e2414cd1ba76d71739cf0fc8302109da
- https://stackoverflow.com/questions/71559757/how-to-access-kubernetes-microk8s-dashboard-remotely-without-ingress

AI agent frameworks:
- https://github.com/e2b-dev/awesome-ai-agents
- https://www.analyticsvidhya.com/blog/2024/07/ai-agent-frameworks/
- https://indianexpress.com/article/technology/artificial-intelligence/openai-unveils-new-tools-for-building-ai-agents-heres-what-it-means-9882512/
- https://botpress.com/blog/ai-agent-frameworks

## How to respond to this prompt:
- Answer as an expert in the field
- Communicate the value for the company - make management see the value of the functional requirements
- Highlight that this will contribute to the flexibility and well-being of employees in the company

### Other
- Make it available as a PDF document for download
- Make it easy to copy all the content so it can be pasted into confluence wiki
- Make it easy to convert the document into a markdown file for the GitHub project README.md file

Answer in English first. I will then ask you to translate the document into Norwegian