Feature: Project
  @AVL
  Scenario: As a user I want to create an item inside a project

    Given I have authentication to todo.ly
    # consumiendo el request
    When I send POST request 'api/items.json' with json

    """
    {
      "Content": "Item1",
      "ProjectId": "3870948"
    }
    """

    # verificar el response

    Then I expect the response code 200
    And I expect the response body is equal

    """
    {
      "Id": EXCLUDE,
      "Content": "Item1",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": 3870948,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": 4,
      "Priority": 4,
      "LastSyncedDateTime": EXCLUDE,
      "Children": [],
      "DueDateTime": null,
      "CreatedDate": EXCLUDE,
      "LastCheckedDate": null,
      "LastUpdatedDate": EXCLUDE,
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": 676047

    }
    """

    And I get the property value 'Id' and save on ID_ITEM
    And I get the property value 'Content' and save on NAME_ITEM

    When I send PUT request 'api/items/ID_ITEM.json' with json

    """
    {
      "Content": "Item1 UPDATE",
    }
    """

    # verificar el response

    Then I expect the response code 200
    And I expect the response body is equal

    """
    {
      "Id": ID_ITEM,
      "Content": NAME_ITEM UPDATE,
      "ItemType": 1,
      "Checked": false,
      "ProjectId": 3870948,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": 4,
      "Priority": 4,
      "LastSyncedDateTime": EXCLUDE,
      "Children": [],
      "DueDateTime": null,
      "CreatedDate": EXCLUDE,
      "LastCheckedDate": null,
      "LastUpdatedDate": EXCLUDE,
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": 676047
}
    """

    When I send GET request 'api/items/ID_ITEM.json' with json
    """
    """
    Then I expect the response code 200
    And I expect the response body is equal
    """
    {
      "Id": ID_ITEM,
      "Content": "NAME_ITEM UPDATE",
      "ItemType": 1,
      "Checked": false,
      "ProjectId": 3870948,
      "ParentId": null,
      "Path": "",
      "Collapsed": false,
      "DateString": null,
      "DateStringPriority": 0,
      "DueDate": "",
      "Recurrence": null,
      "ItemOrder": 4,
      "Priority": 4,
      "LastSyncedDateTime": EXCLUDE,
      "Children": [],
      "DueDateTime": null,
      "CreatedDate": EXCLUDE,
      "LastCheckedDate": null,
      "LastUpdatedDate": EXCLUDE,
      "Deleted": false,
      "Notes": "",
      "InHistory": false,
      "SyncClientCreationId": null,
      "DueTimeSpecified": true,
      "OwnerId": 676047

    }
    """

    When I send DELETE request 'api/items/ID_ITEM.json' with json
    """
    """
    Then I expect the response code 200