<h1 align=center>Seekers gRPC</h1>

<p align=center>
	<a href="https://jitpack.io/#seekers-dev/seekers-grpc">
		<img alt="Jitpack" src="https://jitpack.io/v/seekers-dev/seekers-grpc.svg">
	</a>
	<a href="https://github.com/seekers-dev/seekers-grpc/actions/workflows/codeql.yml">
		<img alt="CodeQL" src="https://github.com/seekers-dev/seekers-grpc/actions/workflows/codeql.yml/badge.svg">
	</a>
    <a href="https://github.com/seekers-dev/seekers-grpc/actions/workflows/maven-publish.yml">
        <img alt="Maven Package" src="https://github.com/seekers-dev/seekers-grpc/actions/workflows/maven-publish.yml/badge.svg">
    </a>
	<a href="https://github.com/seekers-dev/seekers-grpc/actions/workflows/maven.yml">
		<img alt="Java CI with Maven" src="https://github.com/seekers-dev/seekers-grpc/actions/workflows/maven.yml/badge.svg">
	</a>
    <img alt="GitHub License" src="https://img.shields.io/github/license/seekers-dev/seekers-grpc">
    <img alt="GitHub top language" src="https://img.shields.io/badge/proto-100%25-blue">
    <img alt="GitHub commit activity" src="https://img.shields.io/github/commit-activity/m/seekers-dev/seekers-grpc">
</p>

Seekers gRPC is a repository that provides a gRPC-based communication interface for the Seekers application. It enables efficient and reliable communication between clients and servers using the gRPC framework.

## Messages

```mermaid
classDiagram
    class Player {
        string id
        List<<string>> seekers_ids
        string camp_id
        uint32 score
    }
    class Camp {
        string id
        string player_id
        double width
        double height
    }
    class Physical {
        string id
        Vector2D acceleration
        Vector2D velocity
        Vector2D position
    }
    class Goal {
        string camp_id
        double time_owned
    }
    class Seeker {
        string player_id
        double magnet
        Vector2D target
        double disable_counter
    }
    
    Goal --|> Physical
    Seeker --|> Physical
```

## Services

```mermaid
sequenceDiagram
    Client->> Server: Enters game
    Server->> Client: Returns token
    Client--) Server: Requests properties
    Server--) Client: Returns properties of game
    loop Runtime
        Client->> Server: Submit changes with token
        Server->> Client: Returns new state
    end
```

## Contributing

Contributions to Seekers gRPC are welcome! If you want to contribute, please follow these guidelines:

1. Fork the repository and clone it locally.
2. Create a new branch for your feature or bug fix.
3. Make your changes and ensure that the code compiles without any errors.
4. Commit your changes and push them to your forked repository and submit a pull request. Please provide a short explanation of your changes in the pull request.
5. We will review your changes and merge your request!

Please make sure to follow the project's coding style, guidelines, and standards.

## License

This project is licensed under the GNU General Public License v3.0.
