ARG SOURCEFOLDER
FROM amazon/aws-glue-libs:glue_libs_1.0.0_image_01
EXPOSE 8888
EXPOSE 4040

RUN mkdir /home/workspace
COPY $SOURCEFOLDER /home/workspace/
WORKDIR /home
