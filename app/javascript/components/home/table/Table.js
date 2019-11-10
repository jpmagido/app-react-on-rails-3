import React from "react"
import PropTypes from "prop-types"
import Item from "./Item"
import ActiveItem from "./ActiveItem"



class Table extends React.Component {
  constructor(props) {
	super(props)

  }
  render () {
  	const items = this.props.course_modules.map((data) => {

  		let handleVideoChanges = this.props.handleVideoChanges.bind(this, data)

  		return (
  			data.active ? 
  			<ActiveItem handleVideoChanges={handleVideoChanges} key={data.id} title={data.title} description={data.description} /> :
  			<Item handleVideoChanges={handleVideoChanges} key={data.id} title={data.title} description={data.description} />
  			)
  	})
  	
    return (
     	<div className="pt-5 pb-5">
			<div className="container">
				<div className="text-center">
					<h2 className="pt-4 pb-4"> React for Rails Developpers - Videos</h2>
				</div>
				{items}
			</div>
     	</div> 
    )
  }
}

export default Table
