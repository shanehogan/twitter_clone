Feature: Register a new user
  In order to gather user information and track usage across sessions.
  As a client of the api we need to be able to register a new user.

  Scenario: Register a user
    When the client requests POST shane@example.com to /user
    Then the response should be JSON:
    """
    [
      {"email": "shane@example.com"}
    ]
    """
