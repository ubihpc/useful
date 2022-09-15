# Architecture patterns

## Serverless

* Fan-Out & Message Filtering with Pub/Sub pattern: Async comms for performing one-to-many and pub/sub mechanisms. Decouples messaging between services -> loosely-coupled architectures. This is used  in event-driven architectures
* Topic-queue chaining & load balancing pattern: To avoid losing messages when using pub-sub comms, place a queue in between Topic management service and consumers, e.g. AWS SWS in between AWS EventBridge and Lambda consumers. Also the queue can acta as a buffering load balancing