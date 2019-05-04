import React from 'react'
import Index from './Index'
import Info from './Info'
import { Route, Switch } from 'react-router-dom'


class App extends React.Component {
    render() {
        return (
            <div>
                <Switch>
                    <Route exact path="/" component={Index} />
                    <Route exact path="/info" component={Info} />
                </Switch>
            </div>
        )
    }
}

export default App