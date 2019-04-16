#!/bin/bash

# takes one command lien argument, the graph data name, to be passed into the python scripts

echo 'decomposition-to-graph-layer.py'
python3 decomposition-to-graph-layer.py -data $1
echo -e '\n'
echo -e '\n'

echo 'graph-layer-add-node-peels.py'
python3 graph-layer-add-node-peels.py -data $1
echo -e '\n'
echo -e '\n'

echo 'gather-statistics.py'
python3 gather-statistics.py -data $1
echo -e '\n'
echo -e '\n'

echo 'process-positions.py'
python3 process-positions.py -data $1
echo -e '\n'
echo -e '\n'

# echo 'add-vertex-labels.py'
# python add-vertex-labels.py -data $1
