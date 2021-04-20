# RUN Glue, Pyspark, Jupyter notebooks from your loca
Configuration for Docker worksapce from aws with jupyter notebooks, python, glue, spark
Prerequisites: Docker, VSCode, Python and VSCode extenstion(Remote - Containers)

## How To run

### Step 1
> **Command**.
> Run shell script
>> ./start_workspace.sh ${SOURCEFOLDERNAME}

### Step 2
> **Command**.
> Open vs code and install extensions
>> install 1. Remote - Containers and 2. Python

### Step 3
> **Command**.
> Access remote window and navigate to home directory in the running container
>> Click Remote Window to Modal and select "Attach to running Running Container"

### Step 4
> **Command**.
> Run python script within the remote vscode window, Open new terminal in the remote window and run the below script
>> spark-2.4.3-bin-spark-2.4.3-bin-hadoop2.8/bin/spark-submit workspace/${sourcefolder}/${pyscript}



> To use Jupyter notebooks run the below script in the remote window and the access the GUI in your browser using "localhost:8888"
>> jupyter/jupyter_start.sh