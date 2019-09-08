# particle-action

Invoke a [Particle function](https://docs.particle.io/reference/device-os/firmware/photon/#particle-function-) as a GitHub Action

## Usage

In your GitHub action:

```
  - uses: mattdsteele/particle-action@master
    env:
      FUNCTION_NAME:  serve
      DEVICE_ID:  ${{ secrets.PARTICLE_DEVICE_ID }}
      ACCESS_TOKEN: ${{ secrets.PARTICLE_ACCESS_TOKEN }}
```
