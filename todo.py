tasks = {}

while True:
    print("Enter 1 to add a task")
        print("Enter 2 to remove a task")
            print("Enter 3 to view all tasks")
                print("Enter 4 to exit")

                    choice = input("Enter your choice: ")

                        if choice == "1":
                                task = input("Enter the task: ")
                                        tasks[len(tasks)+1] = task
                                                print("Task added successfully")

                                                    elif choice == "2":
                                                            if not tasks:
                                                                        print("No tasks to remove")
                                                                                else:
                                                                                            task_number = int(input("Enter the task number to remove: "))
                                                                                                        if task_number in tasks:
                                                                                                                        del tasks[task_number]
                                                                                                                                        print("Task removed successfully")
                                                                                                                                                    else:
                                                                                                                                                                    print("Invalid task number")

                                                                                                                                                                        elif choice == "3":
                                                                                                                                                                                if not tasks:
                                                                                                                                                                                            print("No tasks to display")
                                                                                                                                                                                                    else:
                                                                                                                                                                                                                print("Tasks:")
                                                                                                                                                                                                                            for task_number, task in tasks.items():
                                                                                                                                                                                                                                            print(f"{task_number}. {task}")

                                                                                                                                                                                                                                                elif choice == "4":
                                                                                                                                                                                                                                                        print("Exiting...")
                                                                                                                                                                                                                                                                break

                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                            print("Invalid choice")
                                                                                                                                                                                                                                                                            