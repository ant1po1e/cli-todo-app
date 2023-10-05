echo "Remove a task from the list"

read -p ">>> " task
echo "======Processing======"

string='Removing..'
for ((i = 0; i <= ${#string}; i++)); do
   printf '%s' "${string:$i:1}"
   sleep 0.$(((RANDOM % 5) + 1))
done

sleep 2

printf "\n"

./TodoApp/todo -del $task

echo "Task removed successfully"
echo "======================"

sleep 1

./TodoApp/todo -list
