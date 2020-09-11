FROM bemadev/todos

# The tag here should match the Meteor version of your app, per .meteor/release
# FROM bemadev/meteor-base:1.10.2

# # Copy app package.json and package-lock.json into container
# COPY ./package*.json $APP_SOURCE_FOLDER/

# RUN bash $SCRIPTS_FOLDER/build-app-npm-dependencies.sh

# # Copy app source into container
# COPY . $APP_SOURCE_FOLDER/

# RUN bash $SCRIPTS_FOLDER/build-meteor-bundle.sh

# # Rather than Node 12 latest (Alpine), you can also use the specific version of Node expected by your Meteor release, per https://docs.meteor.com/changelog.html
# FROM node:12-alpine

# ENV APP_BUNDLE_FOLDER /opt/bundle
# ENV SCRIPTS_FOLDER /docker
# # ENV APP_NAME pwa-base

# # Install OS build dependencies, which we remove later after we’ve compiled native Node extensions
# RUN apk --no-cache --virtual .node-gyp-compilation-dependencies add \
# 		g++ \
# 		make \
# 		python \
# 	# And runtime dependencies, which we keep
# 	&& apk --no-cache add \
# 		bash \
# 		curl \
# 		ca-certificates

# # Copy in entrypoint
# COPY --from=0 $SCRIPTS_FOLDER $SCRIPTS_FOLDER/

# # Copy in app bundle
# COPY --from=0 $APP_BUNDLE_FOLDER/bundle $APP_BUNDLE_FOLDER/bundle/

# RUN bash $SCRIPTS_FOLDER/build-meteor-npm-dependencies.sh --build-from-source \
# 	&& apk del .node-gyp-compilation-dependencies

# ENTRYPOINT ["/docker/entrypoint.sh"]

# CMD ["node", "main.js"]
