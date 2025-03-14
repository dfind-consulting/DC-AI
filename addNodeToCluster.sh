# bin/bash

# run the command on the control plane node to get a token
# sudo k8s get-join-token --worker

# paste the join-token here
JOIN_TOKEN=

# on the worker node, run the following command to add it to the cluster
sudo k8s join-cluster $"JOIN_TOKEN"

# check nodes on the control plane after worker join
# sudo k8s kubectl get nodes


