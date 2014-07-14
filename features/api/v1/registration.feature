Feature: Register a new user
  In order to gather user information and track usage across sessions.
  As a client of the api we need to be able to register a new user.

  Scenario: Register a user
    When the client send a POST to "/users" with an email address of "shane@example.com"
    Then the response should be JSON:
    """
    {"id": "someMongoDBAssignedHexValue", "email": "shane@example.com"}
    """
