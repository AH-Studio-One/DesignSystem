# DesignSystem

UI Design System is used as external module to flavour look and feel of any application

As a user I can toggle between different looks of application: f.e light mode, dark mode, or funny mode

### Remote uidesignsystem Spec

| Property   | Type        |
|------------|-------------|
| `fonts`    | `[Font]`    |
| `palette`  | `[Pallete]` |


### Remote Font Spec

| Property| Type     |
|---------|----------|
| `title` | `String` | // f.e "Papyrus-Condensed"
| `size`  | `Double` | // f.e 38.0
| `name`  | `String` | // h1, h2, h3, h4, h5, body1, body2, body3 - 8 types


### Remote Palette Spec

| Property| Type      |
|---------|-----------|
| `name`  | `String`  | // primary, seconday, tertiary, attention, background1 - 5types
| `colors`| `String`  | // f.e "#FF000044s"
 
 
### BE contract

```
200 RESPONSE      
{
    "designItem": [{
        "font": [{
                "name": "h1",
                "title": "GreatVibes-Regular",
                "size": 38.0
            },
            {
                "name": "h2",
                "title": "GreatVibes-Regular",
                "size": 22
            },
            {
                "name": "h3",
                "title": "GreatVibes-Regular",
                "size": 20
            }
        ],
        "pallete": [{
                "name": "primary",
                "color": "#FF000044s"
            },
            {
                "name": "secondary",
                "title": "#FF011144s"
            }
        ]
    }]
}

### Architectural Overview
 
### Story - System requests list of UI identities to apply diverse looks on views

#### Narative 1
``` 
 System requests list of design identities on applicaiton lunch

##### Scenarios (Acceptance Criteria)

``` Given application has internet connection
When user launches the application
Application look and feel (identity) is the latest selection
System requests list of identities for further use

``` Given application has NO internet connection
When user launches the application
Application look and feel (identity) is the latest selection

``` Given application has internet connection
And user launches the application and navigates to identity list
Application look and feel (identity) is the latest selection
System requests list of identities for further use

``` Given application has internet connection
And user launches the application and navigates to identity list
And taps on any identity
Application look and feel (identity) changes to newly selected identity
