import * as pulumi from '@pulumi/pulumi';
import * as kubernetes from '@pulumi/kubernetes';

const config = new pulumi.Config();
const region = config.get('region');

const nginx = new kubernetes.yaml.ConfigGroup('nginx', {
  files: ['manifest/nginx.yaml'],
});
const nginxIngress = new kubernetes.yaml.ConfigGroup(
  'nginx-ingress',
  { files: ['manifest/nginx-ingress.yaml'] },
  { dependsOn: [nginx] }
);
