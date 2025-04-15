#!/bin/bash

# Вариант с ручным изменением команды
cat /var/log/syslog | grep 'error' | head -n 5

# Вариант с запросом пути и ключевого слова от пользователя
read -p "Введите путь к файлу: " CUSTOMPATH && read -p "Введите ключевое слово: " FINDWORD && grep "$FINDWORD" "$CUSTOMPATH" | head -n 5 && unset FINDWORD CUSTOMPATH

