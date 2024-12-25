# linux-helper-SDU-Exam-Monitor
**Disclaimer:** I'm just a student at University of Southern Denmark (SDU) and **not** affiliated with [Exam Monitor](https://sdu.exammonitor.dk/).

The bash script ```exam_monitor.sh``` runs exam monitor on linux. 
It downloads a portable version of java webstart for linux and puts it in ~/Applications/javaws/, and then uses it to run the exam monitor program from its website.

# Instructions
Clone the repo:
```
git clone https://github.com/Sigu0428/linux-helper-SDU-Exam-Monitor.git
```

Make the script executable as a program:
```
chmod +x ./linux-helper-SDU-Exam-Monitor/exam_monitor.sh
```

Then simply execute the script:
```
./linux-helper-SDU-Exam-Monitor/exam_monitor.sh
```

You should now see the exam monitor program pop up and be able to login. In some cases exam monitor is not able to open the login portal in the browser. In that case the a url is automatically copied to your clipboard, that can be pasted into the browser manually.

You might encounter an error if you're using wayland, in which case the program won't start on purpose. Exam monitor can run on wayland, but it won't be able to take screenshots which could get you in trouble. Instead you need to switch to x11. Look up "switching from wayland to x11" for your linux distribution.

# Verify that exam monitor is working
You can verify if exam monitor is working by running exam monitor, logging in and then entering "DEMO" in the "Course" field. Let it run for a while to collect data, maybe copy paste a few things. Then, click on exam monitor on the bottom of the screen and quit the exam. Next, open up the [Exam Monitor](https://sdu.exammonitor.dk/) website. Scroll down a bit and you should see a "login" button. After logging in you should see a list of reports from exams. Press "report" on the newest one and look at the data it has collected. If it looks good then you know its working as intended.