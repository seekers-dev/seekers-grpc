# seekers grpc

[![Jitpack](https://jitpack.io/v/seekers-dev/seekers-grpc.svg)](https://jitpack.io/#seekers-dev/seekers-grpc)

Seekers gRPC is a repository that provides a gRPC-based communication interface for the Seekers application. It enables efficient and reliable communication between clients and servers using the gRPC framework.

## Installation

Note: Replace ``tag`` with the specific release or commit tag you want to use.

### Maven

To use scvis in your Maven project, you need to add the JitPack repository and the dependency to your pom.xml file.

Add the following repository to the ``<repositories>`` section of your pom.xml file:

```xml
<repositories>
	<repository>
	    <id>jitpack.io</id>
	    <url>https://jitpack.io</url>
	</repository>
</repositories>
```

Then, add the scvis dependency to the ``<dependencies>`` section:

```xml
<dependency>
	<groupId>com.github.seekers-dev</groupId>
	<artifactId>seekers-grpc</artifactId>
	<version>tag</version>
</dependency>
```

### Gradle

To use scvis in your Gradle project, you need to add the JitPack repository and the dependency to your build.gradle file.

Add the following repository to the repositories section of your ``build.gradle`` file:

```gradle
allprojects {
	repositories {
		maven { url 'https://jitpack.io' }
	}
}
```

Then, add the scvis dependency to the ``dependencies`` section:

```gradle
dependencies {
	implementation 'com.github.seekers-dev:seekers-grpc:tag'
}
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
