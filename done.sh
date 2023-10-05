echo "Mark a task as completed"

read -p ">>> " task
echo "======Processing======"

string='Marking a task..'
for ((i = 0; i <= ${#string}; i++)); do
   printf '%s' "${string:$i:1}"
   sleep 0.$(((RANDOM % 5) + 1))
done

sleep 2

printf "\n"

./TodoApp/todo -done $task

echo "Task marked as done"
echo "======================"

sleep 1

./TodoApp/todo -list
