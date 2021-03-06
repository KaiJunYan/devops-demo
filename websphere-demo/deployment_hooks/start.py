appname = "websphere-demo-song"
cell = "defaultapp01NodeCell"
node = "defaultapp01Node"
server = "defaultapp01Svr"

import time
result = AdminApp.isAppReady(appname)
while (result == "false"):
   ### Wait 5 seconds before checking again
   time.sleep(5)
   result = AdminApp.isAppReady(appname)
print("Starting application...")
query_server = "cell="+cell+",node="+node+",type=ApplicationManager,process="+server+",*"
appManager = AdminControl.queryNames(query_server)
AdminControl.invoke(appManager, 'startApplication', appname)
