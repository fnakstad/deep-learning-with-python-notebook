c = get_config()
c.NotebookApp.certfile = u'/home/ubuntu/sandbox/ssl/cert.pem'
c.NotebookApp.keyfile = u'/home/ubuntu/sandbox/ssl/cert.key'
c.IPKernelApp.pylab = 'inline'
c.NotebookApp.ip = '*'

c.NotebookApp.open_browser = False
