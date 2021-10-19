import React from 'react'

class SwapForm extends React.Component {

    constructor(props) {
        super(props)

        this.state = { user_id: 1, shift_id: 1, target_id: 2, target_shift_id: 2 }

        this.listUserShifts = this.listUserShifts.bind(this)
        this.listTargetShifts = this.listTargetShifts.bind(this)
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
        let userAvailableShifts = []

        this.props.shifts.forEach((shift) => {
            if (shift.user_id == this.state.user_id) {
                userAvailableShifts.push(shift)
            }
        })

        // return userAvailableShifts

        const returnShifts = userAvailableShifts.map((shift, idx) => {
            return <option value={shift.id}>
                Start: {shift.shift_start} -> End: {shift.shift_end}
            </option>
        })

        return returnShifts
    }

    listTargetShifts(e) {

        let targetShifts = []

        this.props.shifts.forEach((shift) => {
            if (shift.user_id != this.state.user_id) {
                targetShifts.push(shift)
            }
        })

        return target
    }

    updateTargetAndShift(e, target, shift) {

    }

    render () {

        return (

            <form onSubmit={this.handleSubmit} className="swap-form" id="swap-submit">

                <label >Rating: </label>
                <select onChange={console.log("F")} className="swap-user-shifts">
                    {this.listUserShifts()}
                </select>
                <select onChange={console.log("F")} className="swap-target-shifts">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                <br></br>

                <button>Submit</button>
                <button onClick={this.listTargetShifts}>Cancel?</button>

            </form>
        )
    }
}

export default SwapForm

