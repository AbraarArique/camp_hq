User.create(
  name: 'John Stone',
  email: 'john@camphq.com',
  about: 'John is a skilled Ruby programmer who has been writing code for 5 years. He loves to code and program software.',
  status: 'Available'
)
User.create(
  name: 'Jenny Hills',
  email: 'jenny@camphq.com',
  about: 'Jenny is the Ruby on Rails expert of our team. She handles all the back-end of our RoR apps.',
  status: 'Available/Online'
)
User.create(
  name: 'Steve Gems',
  email: 'steve@camphq.com',
  about: 'Steve is a highly experiecned AWS consultant. He helps us deploy and setup Amazon EC2 and S3 instances.',
  status: 'Working/Online'
)

Task.create(
  name: 'EC2 Setup',
  description: 'Initialize an Amazon EC2 t2.micro instance for RoR prototype.',
  completed: 0
)
Task.create(
  name: 'Fix 500 Error',
  description: 'Project #98A5 is experiencing a 500 "Something went wrong" error.',
  completed: 0
)
Task.create(
  name: 'Create RoR Prototype',
  description: 'Create the first prototype of project #98A5.',
  completed: 1
)
