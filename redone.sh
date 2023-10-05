echo "Mark a task as incomplete"

read -p ">>> " task
echo "======Processing======"

string='Marking a task..'
for ((i = 0; i <= ${#string}; i++)); do
   printf '%s' "${string:$i:1}"
   sleep 0.$(((RANDOM % 5) + 1))
done

sleep 2

printf "\n"

./TodoApp/todo -redone $task

echo "Task marked as incompleted"
echo "======================"

sleep 1

./TodoApp/todo -list
