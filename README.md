# Launch-helper-SDU-Exam-Monitor
**Disclaimer:** I'm just a student at University of Southern Denmark (SDU) and **not** affiliated with [Exam Monitor](https://sdu.exammonitor.dk/).

The bash script ```exam_monitor.sh``` downloads a portable version of java webstart and puts it in ~/Applications/javaws/, and then uses it to run the exam monitor program from its website.

# Instructions
Clone the repo:
```
git clone https://github.com/Sigu0428/launch-helper-SDU-Exam-Monitor.git
```

Make the script executable as a program:
```
chmod +x ./launch-helper-SDU-Exam-Monitor/exam_monitor.sh
```

Then simply execute the script:
```
./launch-helper-SDU-Exam-Monitor/exam_monitor.sh
```

You might encounter an error if you're using wayland, in which case the program won't start on purpose. Exam monitor can run on wayland, but it won't be able to take screenshots which could get you in trouble. Instead you need to switch to x11. Look up "switching from wayland to x11" for your linux distribution.

After that you should be able to login using your browser, but in some cases you can't and will need to paste the url that automatically copied to your clipboard into the browser manually.

# Verify that exam monitor is working
You can verify if exam monitor is working by running exam monitor, logging in and then entering "DEMO" in the "Course" field. Let it run for a while to collect data, maybe copy paste a few things. Then quit the exam and open up the [Exam Monitor](https://sdu.exammonitor.dk/). website. Scroll down a bit and you should see a "login" button. After logging in you should see a list of reports from exams. Press "report" and look at the data it has collected. If it looks good then you know its working as intended.