# In CI we don't have access to a regular .bashrc file, so we need to
# prepend the PATH from here

if [ -z "$PROTO_HOME" ]; then
  export PROTO_HOME="$HOME/.proto"
fi

if [[ ":$PATH:" != *":$PROTO_HOME/shims:"* ]]; then
  export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH"
fi
