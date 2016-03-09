import time
def log(s):
  log_file=open('dlp.log','a')
  time_now = time.asctime(time.localtime(time.time()))
  time_log = time_now+" : "+s+"\n"
  log_file.write(time_log)
  log_file.close()

log("Something")
log("Something else")

def clear_log():
  log_file = open('dlp.log','w')
  log_file.close()

k=raw_input()
clear_log()

log("Something")
log("Something else")