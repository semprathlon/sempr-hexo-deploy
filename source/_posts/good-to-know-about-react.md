---
title: Good to know about ReactJS
date: 2019-03-31 16:49:09
tags:
    - js
    - react
categories: [Development]
---
- Declarative

- Component-based

    encapsulate behaviors into small units called Components
    Components are made of elements.
    Components enable us to break down the entire UI in to smaller reusable pieces.
    can have private states to control.
    Only class components can store states.

- [Component Methods](https://reactjs.org/docs/react-component.html)

- [Component State and Lifecycle](https://reactjs.org/docs/state-and-lifecycle.html)

- Element

    smallest building blocks is elements.

- Basic structure for a component

    ```js
    import React, { Component } from 'react';

    class Menu extends Component {
        constructor(props) {
            super(props);
            // Need to supply this props to the super class
        }
        render(){
            return(
                // the view for this component
            );
        }
    }
    export default Menu;
    //need to import this component for wherever we use
    ```

- Every parameter pass to the component is under `props`.

- If one component export the default one, there is no need to enclose import component name with braces, otherwise error occurs. 

- JSX: wrapped React Component expression

- Handling events like handling DOM elements