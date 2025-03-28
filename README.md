# Proses Pengerjaan

## 1. Implementasi Crouch

- Pertama-tama saya menambahkan variabel berikut
    ```
    @export var crouch_speed: float = 3.0
    @export var crouch_scale: float = 0.5  
    @export var transition_speed: float = 10.0
    var is_crouching: bool = false
    var target_scale: float = 1.0
    ```

- Selanjutnya saya menambahkan kode berikut untuk implementasi fitur `crouch`
    ```
    if Input.is_action_just_pressed("crouch"):
		if is_on_floor(): 
			is_crouching = !is_crouching
			target_scale = crouch_scale if is_crouching else 1.0
    ```
    Lalu di dalam function `_physics_process` saya menambahkan kode berikut
    ```
    scale.y = lerp(scale.y, target_scale, transition_speed * delta)
    ```

- Untuk mengubah kecepatan player saat sedang di kondisi `crouch` saya menambahkan kode berikut
    ```
    if is_crouching:
		current_speed = crouch_speed 
    ```

- Terakhir saya menambahkan input map untuk tombol `ctrl` pada project settings sebagai action `crouch`

## 2. Implementasi Sprint

- Pertama-tama saya menambahkan variabel berikut
    ```
    @export var sprint_speed: float = 15.0
    ```

- Selanjutnya untuk implementasi fitur `sprint` saya hanya mengubah kecepatan player dengan kondisional berikut
    ```
    var current_speed = speed
	...
	elif Input.is_action_pressed("sprint"):
		current_speed = sprint_speed
    ```

- Terakhir saya menambahkan input map untuk tombol `shift` pada project settings sebagai action `sprint`

## 3. Implementasi Level 2

Untuk implementasi level 2 saya membuat world baru terlebih dahulu lalu baru mendesain world tersebut, di akhir level 2 akan terdapat interactable donut. Jika player menekan tombol `e` ke arah donut tersebut maka akan muncul tampilan `Win Screen`