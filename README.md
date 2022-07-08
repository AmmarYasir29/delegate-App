<<<<<<< HEAD
# Ivory Dental Lab Application

## Build with Oracle Database and Oracle APEX

---

- The App use to manage the lab business such as track the delegate and there accounts, the deadline for paying and other stuf
- A whole authraziation and authntication system for application

---

| The screens | Insert |                   Delete                    |                     Update                      |
| :---------: | :----: | :-----------------------------------------: | :---------------------------------------------: |
|   Doctors   | check  |  can't delete if there list DTS use the id  |                                                 |
|  Delegata   | check  |   can't delete if there list M use the id   |                                                 |
|   list M    | check  |      عند الحذف الديتيلز يعكس البيانات       | عند التحديث لا يعكس البيانات الجديده على الطبيب |
|  list DTS   | check  | عند الحذف يحذف البيانات من الطبيب و المندوب |          عند التحديث لا يعكس البيانات           |
=======
| The screens | Insert |                                      Delete |                                          Update |
| ----------- | :----: | ------------------------------------------: | ----------------------------------------------: |
| Doctors     | check  |    |                                                 |
| Delegata    | check  |      |                                                 |
| list M      | check  |            عند الحذف الديتيلز يعكس البيانات | عند التحديث لا يعكس البيانات الجديده على الطبيب |
| list DTS    | check  | عند الحذف يحذف البيانات من الطبيب و المندوب |                    عند التحديث لا يعكس البيانات |
>>>>>>> d3942dce28d042e02a1055762b8c13b46758a869

---

# شاشة اضافة القوائم

## ماستر

### `حقل المندوب`

الاضافة تم

التحديث لا يعكس بأي مكان

الحذف لا يمكن الحذف

### `حقل نوع القائمة`

الاضافة تم

التحديث يعكس بالمندوب لكن لا يعكس
بالاطباء

الحذف لا يمكن الحذف

## ديتيلز

### `حقل الطبيب`

لا يحدث
عند التحديث لا يتغير البيانات

### `حقل السعر و العدد`

يحدث

### `حقل الملاحظات`

يحدث

### `حقل اسم المريض`
