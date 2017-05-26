//= require_tree ./components

const HelloMessage = React.creatClass({
	render: function() {
		return (
			<h1>Hello {this.props.name}!<h1>
		)
	}
});