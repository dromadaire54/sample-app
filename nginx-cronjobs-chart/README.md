# Nginx CronJobs Helm Chart

This Helm chart deploys a set of 70 CronJobs that run an Nginx container. Each CronJob is configured to execute at specified intervals, allowing for scheduled tasks to be performed using the Nginx image.

## Prerequisites

- Kubernetes cluster
- Helm 3.x installed

## Installation

To install the chart, use the following command:

```bash
helm install <release-name> ./nginx-cronjobs-chart
```

Replace `<release-name>` with your desired release name.

## Configuration

You can customize the chart by modifying the `values.yaml` file. The default configuration includes parameters for the number of CronJobs and their scheduling.

## Uninstallation

To uninstall the chart, run:

```bash
helm uninstall <release-name>
```

Replace `<release-name>` with the name you used during installation.

## License

This project is licensed under the MIT License. See the LICENSE file for details.