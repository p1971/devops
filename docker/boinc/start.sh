docker run -d \
  --restart=unless-stopped \
  --name boinc \
  --net=host \
  -v /opt/appdata/boinc:/var/lib/boinc \
  -e BOINC_GUI_RPC_PASSWORD="qwsazx!" \
  -e BOINC_CMD_LINE_OPTIONS="--allow_remote_gui_rpc" \
  boinc/client
