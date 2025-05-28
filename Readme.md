# STEPS TO CREATE DIRECTUS EXTENSIONS

### 1. Run the Command:

```bash
npx create-directus-extension
```

### 2. Choose the extension type:

```bash
  1. Interface
  2. Layout
  3. Display
  ...
  ..
  ..
  [choose Bundle] ✅

```

To create a similar folder structure like this repo, choose bundle type.

### 3. Choose the Language:

```bash
  1. JavaScript
  2. TypeScript ✅
```

and Follow the process.....

## Now to Link the Extension to Directus:

### 1. Go to the project directory:

```bash
cd directus-extension-test (project directory)
```

### 2. copy .env.example to .env:

```bash
cp .env.example .env
```

### 3. Build the project:

```bash
npm run build
```

## Setup Docker for Directus:

### 1. Run the Command:

```bash
docker-compose up -d --build
```

### 2. Open terminal and run the script:

```bash
chmod +x directus-setup-extension.sh
./directus-setup-extension.sh
```

You may need to enter the container name while running the script. You can find the container name in `docker-compose.yml` file.

NOTE: You can choose a different container name if you want.

#### Congratulations! 🎉

You have successfully created and linked the Directus extension. You can now test the extension with your Directus instance.
