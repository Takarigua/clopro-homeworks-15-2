# Домашнее задание к занятию «Вычислительные мощности. Балансировщики нагрузки»  

---
## Задание 1. Yandex Cloud 

**Что нужно сделать**

1. Создать бакет Object Storage и разместить в нём файл с картинкой:

 - Создать бакет в Object Storage с произвольным именем (например, _имя_студента_дата_).
 - Положить в бакет файл с картинкой.
 - Сделать файл доступным из интернета.
 
2. Создать группу ВМ в public подсети фиксированного размера с шаблоном LAMP и веб-страницей, содержащей ссылку на картинку из бакета:

 - Создать Instance Group с тремя ВМ и шаблоном LAMP. Для LAMP рекомендуется использовать `image_id = fd827b91d99psvq5fjit`.
 - Для создания стартовой веб-страницы рекомендуется использовать раздел `user_data` в [meta_data](https://cloud.yandex.ru/docs/compute/concepts/vm-metadata).
 - Разместить в стартовой веб-странице шаблонной ВМ ссылку на картинку из бакета.
 - Настроить проверку состояния ВМ.
 
3. Подключить группу к сетевому балансировщику:

 - Создать сетевой балансировщик.
 - Проверить работоспособность, удалив одну или несколько ВМ.
4. (дополнительно)* Создать Application Load Balancer с использованием Instance group и проверкой состояния.

Полезные документы:

- [Compute instance group](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance_group).
- [Network Load Balancer](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/lb_network_load_balancer).
- [Группа ВМ с сетевым балансировщиком](https://cloud.yandex.ru/docs/compute/operations/instance-groups/create-with-balancer).

---
## Ответ:

1. Создал ВМ LAMP
![ВМ](https://github.com/Takarigua/clopro-homeworks-15-2/blob/e6a7b97f1fc33941dad288816e45f586046b4ee2/screen/%D0%92%D0%9C.png)

---

2. Группа ВМ
![Группа](https://github.com/Takarigua/clopro-homeworks-15-2/blob/e6a7b97f1fc33941dad288816e45f586046b4ee2/screen/%D0%93%D1%80%D1%83%D0%BF%D0%BF%D0%B0.png)

---

3. Проверка состояния
![Состояние](https://github.com/Takarigua/clopro-homeworks-15-2/blob/e6a7b97f1fc33941dad288816e45f586046b4ee2/screen/%D0%A1%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D0%BD%D0%B8%D0%B5.png)

---

4. Балансировщик
![Балансировщик](https://github.com/Takarigua/clopro-homeworks-15-2/blob/e6a7b97f1fc33941dad288816e45f586046b4ee2/screen/%D0%91%D0%B0%D0%BB%D0%B0%D0%BD%D1%81%D0%B8%D1%80%D0%BE%D0%B2%D1%89%D0%B8%D0%BA.png)

---

5. Страница
![Сайт](https://github.com/Takarigua/clopro-homeworks-15-2/blob/e6a7b97f1fc33941dad288816e45f586046b4ee2/screen/%D0%A1%D0%B0%D0%B9%D1%82.png)

---

6.Отказоусточивость. Выключил ВМ, страница доступна, пока делал скриншот ВМ начала запускаться сама
![Отказоустойчивость](https://github.com/Takarigua/clopro-homeworks-15-2/blob/e6a7b97f1fc33941dad288816e45f586046b4ee2/screen/%D0%9E%D1%82%D0%BA%D0%B0%D0%B7.png)

