# flutter_photos_firebase

### Integrantes
- Juan Falconi
- Juan Gualotuña

## Instalacion de dependencias usadas para tomar y subir fotos a firebase

```sh
dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^3.2.0
  firebase_storage: ^12.1.1
  firebase_auth: ^5.1.2
  image_picker: ^1.1.2
  universal_io: ^2.2.2
  image_picker_web: ^4.0.0
```

## Configuracion de variables 

```sh
const firebaseConfig = {
      apiKey: "tus crendenciales",
      authDomain: "tus credenciales",
      projectId: "tus credenciales",
      storageBucket: "tus credenciales",
      messagingSenderId: "tus credenciales",
      appId: "tus credenciales"
    };
```

# La APK la pueden encontrar en el siguiente enlace

https://epnecuador-my.sharepoint.com/:u:/g/personal/juan_falconi_epn_edu_ec/EbdItiPrgYZDpMbDHiO4A3sBn_la9NtfdjSMbbxQDDHKvw?e=YeQzFN

# Demostración de la aplicación en funcionamiento

### WEB
La demostración de la web se realizó cuando se hizo el deploy:

<p align="center">
  <img src="https://github.com/user-attachments/assets/5090c96e-22a8-418c-ba82-2ff5c7800ad0" alt="Web Deployment">
</p>

Tomamos una foto y seleccionamos una foto que en este caso es "sky":

<p align="center">
  <img src="https://github.com/user-attachments/assets/2f8a3adb-3938-40a0-8f12-b77e65555515" alt="Seleccionar Foto">
</p>

Subimos la foto al Firebase:

<p align="center">
  <img src="https://github.com/user-attachments/assets/0e22f58f-3f65-44e5-bdec-0b1aaac581c7" alt="Subir Foto">
</p>

Mensaje de verificación de la subida de la imagen:

<p align="center">
  <img src="https://github.com/user-attachments/assets/01aaac51-a3b7-4828-b85d-d78b299255b8" alt="Verificación de Subida">
</p>

Verificamos en Firebase si se subió el archivo:

<p align="center">
  <img src="https://github.com/user-attachments/assets/b0808938-15d4-4ae8-ac13-de5d0fced62d" alt="Verificación en Firebase">
</p>

### Móvil

Para demostrar el funcionamiento de esta aplicación, al momento de hacer el debug se seleccionó el dispositivo Redmi 8 Pro para que sea más práctico.

<p align="center">
  <img src="https://github.com/user-attachments/assets/7e9a9988-fb78-48bd-84c7-79bb9781773f" alt="Screenshot" />
</p>

Al abrir la aplicación, nos muestra un Home donde podemos tomar una foto y subirla.

<p align="center">
  <img src="https://github.com/user-attachments/assets/3abf0ea8-a62a-4f57-9c7e-f3be901a348f" alt="Screenshot" />
</p>

Tomamos una foto y le damos al botón "visto/listo".

<p align="center">
  <img src="https://github.com/user-attachments/assets/2f355a4f-9db9-4695-b84a-939fabd6ec0b" alt="Screenshot" />
</p>

Ahora veremos la imagen tomada y nos dará la opción de tomar otra imagen o de subir esa imagen.

<p align="center">
  <img src="https://github.com/user-attachments/assets/643f9ddb-9ebf-4389-a67b-0b1b853065f7" alt="Screenshot" />
</p>

Al momento de subir la imagen, veremos un mensaje que nos indica que la imagen se subió correctamente.

<p align="center">
  <img src="https://github.com/user-attachments/assets/ae9566ee-6cbf-4327-8251-e9622f8d297c" alt="Screenshot" />
</p>

Para verificar si la imagen se subió correctamente al storage de Firebase, ingresamos a Firebase.

Se creó una carpeta llamada "images".

<p align="center">
  <img src="https://github.com/user-attachments/assets/dfcd33e8-e6cd-48a0-86e7-509fb66b1ec6" alt="Screenshot" />
</p>

Dentro de esta carpeta, encontramos que la imagen se ha subido correctamente.

<p align="center">
  <img src="https://github.com/user-attachments/assets/6f6d1a0a-1366-4fcf-92cc-3fea528f35e5" alt="Screenshot" />
</p>
