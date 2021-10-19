import React from 'react'

class SwapForm extends React.Component {

    constructor(props) {

        console.log(props)
        super(props)

        this.state = { user_id: 1, shift_id: 1, target_id: 2, target_shift_id: 2 }
    }

    componentDidUpdate(prevProps) {
        if (this.props.user !== prevProps.user) {
            this.setState({ user_id: this.props.user.id})
        }
    }

    handleSubmit(e) {
        e.preventDefault();
        // let review = { review: this.state }
        // this.props.createReview(review).then(
        //     this.props.history.push(`/benches/${this.props.bench.id}`)
        // )

    }

    listUserShifts(e) {

    }

    updateTarget(e) {

    }

    listTargetShifts(e) {

    }


    render () {

        return (

            <form onSubmit={this.handleSubmit} className="swap-form" id="swap-submit">

                <label >Rating: </label>
                <select onChange={console.log("F")} className="form-rating">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                <br></br>
                <label >Comment: </label>
                <textarea className="form-comment" onChange={console.log("F")}></textarea>
                <br></br>

                <button>Submit</button>
                <button onClick={console.log("F")}>Cancel?</button>

            </form>
        )
    }
}

export default SwapForm

