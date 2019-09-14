# particle-action

Invoke a [Particle function](https://docs.particle.io/reference/device-os/firmware/photon/#particle-function-) as a GitHub Action

## Usage

In your GitHub action, to execute the `serve` function you've registered on a device:

```yml
- uses: docker://mattdsteele/particle-github-action:latest
  env:
    FUNCTION_NAME: serve
    DEVICE_ID: ${{ secrets.PARTICLE_DEVICE_ID }}
    ACCESS_TOKEN: ${{ secrets.PARTICLE_ACCESS_TOKEN }}
```

You can also set `uses: mattdsteele/particle-action@master` to pull directly from GitHub, but the feedback loop will be much slower (as it builds the Docker container)
