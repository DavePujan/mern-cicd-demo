🚀 What To Start Tomorrow (Before Presentation)
Step 1 — Start the Server

Go to Amazon EC2

Select instance → click:

Instance state
→ Start instance

Wait ~40 seconds.

Step 2 — SSH Into Server

Run:

ssh -i cicd-key.pem ec2-user@13.234.21.175
Step 3 — Start CodeDeploy Agent

Sometimes after reboot it's already running, but verify:

sudo service codedeploy-agent status

If needed:

sudo service codedeploy-agent start
Step 4 — Test Pipeline Once

Go to AWS CodePipeline

Click:

Release change

Make sure stages run:

Source ✔
Build ✔
Deploy ✔
Step 5 — Demo Trigger

During presentation run:

git commit -am "demo update"
git push

Students will see pipeline execute live.

🎤 Perfect Demo Flow (30 seconds)

Say:

“Let’s simulate a developer pushing code.”

Run:

git push

Show pipeline running.

Then open:

http://EC2_PUBLIC_IP:3000

Refresh → updated app.

Students will clearly understand CI/CD automation.


-> After the Session (Important)

Stop instance again:

EC2 → Stop instance

This avoids charges.