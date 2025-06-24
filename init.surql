USE NS test DB test;

DEFINE TABLE todos SCHEMAFULL;
DEFINE FIELD title ON TABLE todos TYPE string ASSERT $value != NONE;
DEFINE FIELD completed ON TABLE todos TYPE bool DEFAULT false;
DEFINE FIELD created_at ON TABLE todos TYPE datetime DEFAULT time::now();
DEFINE FIELD updated_at ON TABLE todos TYPE datetime DEFAULT time::now();

CREATE todos:1 SET title = "Apprendre SurrealDB", completed = false;
CREATE todos:2 SET title = "Créer l'interface Svelte", completed = false;
CREATE todos:3 SET title = "Déployer avec Kubernetes", completed = false;

SELECT * FROM todos;