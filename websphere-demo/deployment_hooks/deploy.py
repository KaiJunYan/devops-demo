deploymode = "update"
appname = "websphere-demo-song"
cell = "defaultapp01NodeCell"
node = "defaultapp01Node"
server = "defaultapp01Svr"
package_path = "/opt/websphere-demo-song/target/websphere-demo-song.war"
context = "/hello"
web_moudle = "websphere-demo-song.war"
web_moudle_config = "websphere-demo-song.war,WEB-INF/web.xml"
vhost = "default_host"
pre_compile_jsp = "true"
reload_enabled = "false"

apps = AdminApp.list().split('\n')
if appname not in apps :
    deploymode = "install"

if deploymode == "install" :

    print("Install application:"+appname)
    options = ['-appname',appname,'-cell',cell,'-node', node, '-server', server ,'-contextroot', context, '-MapWebModToVH',[[ web_moudle, web_moudle_config, vhost ]]]
    if pre_compile_jsp == "true" :
        options.append("-preCompileJSPs")
    if reload_enabled == "false" :
        options.append("-reloadEnabled")
    AdminApp.install(package_path,options)
    AdminConfig.save()

else :
    print("Update application:"+appname)
    options = ['-operation','update','-contents', package_path, '-contextroot',context ,'-nodeployejb','-MapWebModToVH',[[ web_moudle,web_moudle_config,vhost]]]
    if pre_compile_jsp == "true":
        options.append("-preCompileJSPs")
    if reload_enabled == "false" :
        options.append("-reloadEnabled")
    AdminApp.update(appname, 'app', options)

deployid = "/Deployment:"+appname+"/"
dep = AdminConfig.getid(deployid)
depObject = AdminConfig.showAttribute(dep, 'deployedObject')
classldr = AdminConfig.showAttribute(depObject, 'classloader')
AdminConfig.modify(classldr, [['mode', 'PARENT_LAST']])
AdminApplication.configureWebModulesOfAnApplication(appname, web_moudle, "900", "PARENT_LAST", "", "false")
AdminConfig.save()

