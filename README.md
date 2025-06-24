# 📋 Todo App - SvelteKit + SurrealDB + Kubernetes

Une application todo moderne utilisant SvelteKit, SurrealDB et déployable sur Kubernetes.

## 🚀 Démarrage rapide

**Après avoir cloné le projet :**

```bash
# 1. Démarrer l'application
docker compose up --build

# 2. Initialiser la base de données (dans un autre terminal)
docker exec -it surrealdb /surreal import --conn http://localhost:8000 --user root --pass root --ns test --db test /docker-entrypoint-initdb.d/init.surql
```

C'est tout ! L'application est maintenant accessible sur :
- **Frontend:** http://localhost:5173
- **Base de données:** http://localhost:3001

## 🏗️ Architecture

```
┌─────────────────┐    ┌─────────────────┐
│   Frontend      │◄──►│   SurrealDB     │
│   (Svelte)      │    │   (Database)    │
│   Port: 5173    │    │   Port: 3001    │
└─────────────────┘    └─────────────────┘
```

## 🛠️ Stack technique

- **Frontend:** SvelteKit + Tailwind CSS
- **Base de données:** SurrealDB
- **Orchestration:** Docker Compose
- **Déploiement:** Kubernetes (K3s)