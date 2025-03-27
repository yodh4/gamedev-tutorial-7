# Proses Pengerjaan

## 1. Implementasi Crouch

- Pertama-tama saya menambahkan variabel berikut
    ```
    @export var crouch_speed: float = 3.0
    var is_crouching: bool = false
    ```

- Selanjutnya saya menambahkan kode berikut untuk implementasi fitur `crouch`
    ```
    if Input.is_action_just_pressed("crouch"):
		if is_on_floor(): 
			is_crouching = !is_crouching
			if is_crouching:
				scale.y = 0.5  
			else:
				scale.y = 1.0 
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
